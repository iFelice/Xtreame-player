package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2889d1 extends AbstractC2881b1 implements R1 {
    @Override // com.google.protobuf.AbstractC2881b1
    public final void e() {
        super.e();
        AbstractC2909i1 abstractC2909i1 = this.f24413H;
        if (((GeneratedMessageLite$ExtendableMessage) abstractC2909i1).extensions != W0.f24385d) {
            ((GeneratedMessageLite$ExtendableMessage) abstractC2909i1).extensions = ((GeneratedMessageLite$ExtendableMessage) abstractC2909i1).extensions.clone();
        }
    }

    @Override // com.google.protobuf.AbstractC2881b1, com.google.protobuf.P1
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final GeneratedMessageLite$ExtendableMessage k() {
        if (!((GeneratedMessageLite$ExtendableMessage) this.f24413H).isMutable()) {
            return (GeneratedMessageLite$ExtendableMessage) this.f24413H;
        }
        ((GeneratedMessageLite$ExtendableMessage) this.f24413H).extensions.m();
        return (GeneratedMessageLite$ExtendableMessage) super.k();
    }
}
