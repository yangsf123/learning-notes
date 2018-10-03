kubectl config set-cluster kubernetes \
    --certificate-authority=/etc/kubernetes/ssl/ca.pem \
    --embed-certs=true \
    --server=https://10.20.3.126:6443
# 设置客户端认证参数
kubectl config set-credentials admin \
    --client-certificate=/etc/kubernetes/ssl/admin.pem \
    --embed-certs=true \
    --client-key=/etc/kubernetes/ssl/admin-key.pem

