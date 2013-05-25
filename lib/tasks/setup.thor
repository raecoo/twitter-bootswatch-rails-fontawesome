class Setup < Thor
  include Thor::Actions

  desc 'fontawesome_update_asset_pipeline', 'make font awesome less files use asset pipeline'
  def fontawesome_update_less_files_for_asset_pipeline

    # default template

    gsub_file 'vendor/toolkit/font-awesome/variables.less',
              /@FontAwesomePath:\s*"\.\.\/font";/,
              ''

    gsub_file 'vendor/toolkit/font-awesome/variables.less',
              /@FontAwesomeVersion:\s*"\d\.\d\.\d";/,
              ''

    gsub_file 'vendor/toolkit/font-awesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.eot?v=@{FontAwesomeVersion}\')',
              'asset-url("font-awesome/fontawesome-webfont.eot")'

    gsub_file 'vendor/toolkit/font-awesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.eot?#iefix&v=@{FontAwesomeVersion}\')',
              'asset-url("font-awesome/fontawesome-webfont.eot")'

    gsub_file 'vendor/toolkit/font-awesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.woff?v=@{FontAwesomeVersion}\')',
              'asset-url("font-awesome/fontawesome-webfont.woff")'

    gsub_file 'vendor/toolkit/font-awesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.ttf?v=@{FontAwesomeVersion}\')',
              'asset-url("font-awesome/fontawesome-webfont.ttf")'

    gsub_file 'vendor/toolkit/font-awesome/path.less',
              'url(\'@{FontAwesomePath}/fontawesome-webfont.svg#fontawesomeregular?v=@{FontAwesomeVersion}\')',
              'asset-url("font-awesome/fontawesome-webfont.svg")'

    gsub_file 'vendor/toolkit/font-awesome/path.less',
              'url(\'@{FontAwesomePath}/FontAwesome.otf\')',
              'asset-url("font-awesome/FontAwesome.otf")'

  end

end