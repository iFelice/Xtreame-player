package com.google.protobuf;

import java.io.Serializable;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public enum T2 {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(HttpUrl.FRAGMENT_ENCODE_SET),
    BYTE_STRING(r.f24491H),
    ENUM(null),
    MESSAGE(null);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f24360G;

    T2(Serializable serializable) {
    }
}
