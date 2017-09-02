module FeatureExamples
  module ResponseHelpers
    def valid_features
      [{ 'type' => 'feature',
         'name' => 'Node',
         'version' => '6.11.2',
         'description' => 'The application uses Node js code',
         'categories' => ['Language'],
         'engines' => ['belugas', 'belugas-node'] },
       { 'type' => 'feature',
         'name' => 'postgresql',
         'version' => '9.6',
         'description' => 'The application uses postgresql',
         'content' => '',
         'categories' => ['Database'],
         'cue_locations' => [''],
         'engines' => ['belugas', 'belugas-node'] }]
    end

    def default_node_feature
      [{ 'type' => 'feature',
         'name' => 'Node',
         'version' => '6.11.2',
         'description' => 'The application uses Node js code',
         'categories' => ['Language'],
         'engines' => ['belugas', 'belugas-node'] }]
    end
  end
end
