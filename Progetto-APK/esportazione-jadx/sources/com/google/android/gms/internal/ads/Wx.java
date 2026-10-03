package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class Wx extends Xx {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f17349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JSONObject f17350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f17351e;

    public Wx(C0871Om c0871Om, HashSet hashSet, JSONObject jSONObject, long j8) {
        super(c0871Om);
        this.f17349c = new HashSet(hashSet);
        this.f17350d = jSONObject;
        this.f17351e = j8;
    }
}
