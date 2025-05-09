{
  programs.onagre = {
    enable = true;
    style = ''
      .onagre {
        background: #d6d6d6;
        color: #000000;
        --icon-theme: "Papirus";
        --font-family: "DejaVuSans";
        --icon-size: 24;
        border-radius: 8%;
        border-color: #d6d6d6;
        border-width: 4px;
        padding: 5px;

        .container {
          .rows {
            --height: fill-portion 6;
            .row {
              --width: 392;

              .icon {
                padding-top: 4px;
              }

              .category-icon {
                padding-left: 5px;
                --icon-size: 11;
              }

              .title {
                font-size: 18px;
              }

              .description {
                font-size: 12px;
              }
            }

            .row-selected {
              --width: 392;
              border-radius: 8%;
              background:  #c0c0c0;

              .icon {
                padding-top: 4px;
              }

              .category-icon {
                padding-left: 5px;
                --icon-size: 11;
              }

              .title {
                font-size: 20px;
              }

              .description {
                font-size: 12px;
              }
            }
          }

          .search {
            border-radius: 5%;
            background: #ffffff;
            --height: fill-portion 1;
            padding: 4px;
            .input {
              font-size: 20px;
            }
          }

          .scrollable {
            width: 2px;
            border-radius: 5%;
            background: #c0c0c0;
            .scroller {
              width: 4px;
              color: #a1a1a1;
            }
          }
        }
      }
    '';
  };

  nmt.script = ''
    assertFileExists home-files/.config/onagre/theme.scss
    assertFileContent home-files/.config/onagre/theme.scss \
    ${./style}
  '';
}
