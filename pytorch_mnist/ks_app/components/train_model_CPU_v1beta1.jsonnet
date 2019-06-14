{"apiVersion":"kubeflow.org/v1beta1","kind":"PyTorchJob","metadata":{"name":"pytorch-mnist-ddp-cpu"},"spec":{"pytorchReplicaSpecs":{"Master":{"replicas":1,"restartPolicy":"OnFailure","template":{"spec":{"containers":[{"image":"gcr.io/kubeflow-examples/pytorch-mnist/traincpu","name":"pytorch","volumeMounts":[{"mountPath":"/mnt/kubeflow-gcfs","name":"kubeflow-gcfs"}]}],"volumes":[{"name":"kubeflow-gcfs","persistentVolumeClaim":{"claimName":"kubeflow-gcfs","readOnly":false}}]}}},"Worker":{"replicas":3,"restartPolicy":"OnFailure","template":{"spec":{"containers":[{"image":"gcr.io/kubeflow-examples/pytorch-mnist/traincpu","name":"pytorch","volumeMounts":[{"mountPath":"/mnt/kubeflow-gcfs","name":"kubeflow-gcfs"}]}],"volumes":[{"name":"kubeflow-gcfs","persistentVolumeClaim":{"claimName":"kubeflow-gcfs","readOnly":false}}]}}}}}}
