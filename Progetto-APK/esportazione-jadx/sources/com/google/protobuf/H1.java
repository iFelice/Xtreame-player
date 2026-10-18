package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public final class H1 implements O1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public O1[] f24252a;

    @Override // com.google.protobuf.O1
    public final N1 a(Class cls) {
        for (O1 o4 : this.f24252a) {
            if (o4.b(cls)) {
                return o4.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.protobuf.O1
    public final boolean b(Class cls) {
        for (O1 o4 : this.f24252a) {
            if (o4.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
