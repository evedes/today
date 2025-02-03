Rails.application.configure do
  config.lookbook.preview_paths << Rails.root.join("spec/components/previews")
end
