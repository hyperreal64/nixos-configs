{ config, lib, pkgs, stdenv, ... }:

{
    programs.gpg = {
        enable = true;
        settings = {
            no-emit-version = true;
            no-comments = true;
            display-charset = "utf-8";
            keyid-format = "0xlong";
            with-fingerprint = true;
            list-options = "show-uid-validity";
            verify-options = "show-uid-validity";
            cert-digest-algo = "SHA512";
            fixed-list-mode = true;
            no-symkey-cache = true;
            personal-cipher-preferences = [ "AES256" "AES192" "AES" ];
            personal-compress-preferences = [ "ZLIB" "BZIP2" "ZIP" "Uncompressed" ];
            personal-digest-preferences = [ "SHA512" "SHA384" "SHA256" ];
            require-cross-certification = true;
            s2k-cipher-algo = "AES256";
            s2k-digest-algo = "SHA512";
            use-agent = true;
        };
    };
}
