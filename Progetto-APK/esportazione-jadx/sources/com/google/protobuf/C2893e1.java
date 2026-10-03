package com.google.protobuf;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.protobuf.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2893e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterator f24423a;

    public C2893e1(GeneratedMessageLite$ExtendableMessage generatedMessageLite$ExtendableMessage) {
        Iterator itL = generatedMessageLite$ExtendableMessage.extensions.l();
        this.f24423a = itL;
        if (itL.hasNext()) {
        }
    }
}
