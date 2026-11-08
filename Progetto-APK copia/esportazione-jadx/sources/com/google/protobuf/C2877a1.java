package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.a1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2877a1 implements O1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2877a1 f24409a = new C2877a1();

    @Override // com.google.protobuf.O1
    public final N1 a(Class cls) {
        if (!AbstractC2909i1.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (N1) AbstractC2909i1.getDefaultInstance(cls.asSubclass(AbstractC2909i1.class)).buildMessageInfo();
        } catch (Exception e8) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e8);
        }
    }

    @Override // com.google.protobuf.O1
    public final boolean b(Class cls) {
        return AbstractC2909i1.class.isAssignableFrom(cls);
    }
}
