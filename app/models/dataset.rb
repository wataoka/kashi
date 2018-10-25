class Dataset < ApplicationRecord
  def singer_list()
    datasets = Datasets.all.uniq(:singer)

    return datasets
  end
end
