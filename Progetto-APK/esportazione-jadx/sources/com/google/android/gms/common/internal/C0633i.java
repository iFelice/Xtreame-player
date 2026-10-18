package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0633i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Account f11844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f11845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f11846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f11847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f11848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f11849f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f11850g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p036e4.a f11851h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f11852i;

    public C0633i(Account account, p132r.g gVar, String str, String str2) {
        p036e4.a aVar = p036e4.a.f24864b;
        this.f11844a = account;
        Set setEmptySet = gVar == null ? Collections.emptySet() : Collections.unmodifiableSet(gVar);
        this.f11845b = setEmptySet;
        Map mapEmptyMap = Collections.emptyMap();
        this.f11847d = mapEmptyMap;
        this.f11849f = str;
        this.f11850g = str2;
        this.f11851h = aVar;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator it = mapEmptyMap.values().iterator();
        if (it.hasNext()) {
            A0.O.I(it.next());
            throw null;
        }
        this.f11846c = Collections.unmodifiableSet(hashSet);
    }
}
