package com.google.protobuf;

import java.io.Serializable;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.protobuf.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2969y1 {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, HttpUrl.FRAGMENT_ENCODE_SET),
    BYTE_STRING(r.class, r.f24491H),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f24549G;

    EnumC2969y1(Class cls, Serializable serializable) {
    }
}
