#include "train_templ.h"

template void TrainOneIter<TMultiClassError>(const TDataset&, const TDatasetPtrs&, TLearnContext*);
