 #!/usr/bin/env bash

# Decode a response from a plug.
kasa_decode_plug_response() {
  the_code=171;
  the_offset=4;
  od_options="-A n -t u1 ";
  first_byte="$(dd bs=1 count=1 2>/dev/null | od ${od_options} | tr -dc 0-9)";
  if [ ! -z "${first_byte}" ]; then
    {
      printf "\\${first_byte}";
      cat
    } | {
      case "$(nd_get_os)" in
        linux)
          od_options+="--skip-bytes=${the_offset} --width=9999";
          ;;
        macos)
          od_options+="-j ${the_offset}";
          ;;
        *) nd_fail "Unknown OS type.";;
      esac;
      input_num="$(od ${od_options} | tr "\n" " ")";
      IFS=' ' read -r -a array <<< "${input_num}";
      printf_args="";
      for i in "${array[@]}"; do
        output=$(( "${i}" ^ "${the_code}" ));
        printf_args="${printf_args}\x$(printf "%x" "${output}")";
        the_code="${i}";
      done;
      printf "${printf_args}";
    }
  fi;
}
