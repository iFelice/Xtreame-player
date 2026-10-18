package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Xy implements Comparable {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f17555I;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f17554H = -9223372036854775807L;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1534jr f17553G = new C1534jr();

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        Xy xy = (Xy) obj;
        int iCompare = Long.compare(this.f17554H, xy.f17554H);
        return iCompare != 0 ? iCompare : Long.compare(this.f17555I, xy.f17555I);
    }
}
