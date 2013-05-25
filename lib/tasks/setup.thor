class Setup < Thor
  include Thor::Actions

  desc 'fontawesome_update_asset_pipeline', 'make font awesome less files use asset pipeline'
  def fontawesome_update_less_files_for_asset_pipeline

    # default template

    gsub_file 'vendor/toolkit/fontawesome/variables.less',
              /@FontAwesomePath:\s*"\.\.\/font";/,
              ''

    gsub_file 'vendor/toolkit/fontawesome/variables.less',
              /@FontAwesomeVersion:\s*"\d\.\d\.\d";/,
              ''

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.eot?v=@{FontAwesomeVersion}\')',
              'asset-url("fontawesome/fontawesome-webfont.eot")'

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.eot?#iefix&v=@{FontAwesomeVersion}\')',
              'asset-url("fontawesome/fontawesome-webfont.eot#iefix")'

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.woff?v=@{FontAwesomeVersion}\')',
              'asset-url("fontawesome/fontawesome-webfont.woff")'

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.ttf?v=@{FontAwesomeVersion}\')',
              'asset-url("fontawesome/fontawesome-webfont.ttf")'

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.svg#fontawesomeregular?v=@{FontAwesomeVersion}\')',
              'asset-url("fontawesome/fontawesome-webfont.svg#fontawesomeregular")'

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              'url(\'@{FontAwesomePath}/FontAwesome.otf\')',
              'asset-url("fontawesome/FontAwesome.otf")'

  end

end