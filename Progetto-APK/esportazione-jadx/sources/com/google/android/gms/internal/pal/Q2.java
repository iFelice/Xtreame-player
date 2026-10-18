package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class Q2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f23629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f23630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f23631c;

    public Q2(Object obj, Object obj2, Object obj3) {
        this.f23629a = obj;
        this.f23630b = obj2;
        this.f23631c = obj3;
    }

    public final IllegalArgumentException a() {
        StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f23629a;
        sb.append(obj);
        sb.append("=");
        sb.append(this.f23630b);
        sb.append(" and ");
        sb.append(obj);
        sb.append("=");
        sb.append(this.f23631c);
        return new IllegalArgumentException(sb.toString());
    }
}
