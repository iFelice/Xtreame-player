package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1407hH extends S3.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Logger f19075d = Logger.getLogger(AbstractC1407hH.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f19076e = AbstractC1718nI.f20157e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C1459iH f19077c;

    public static int K(NH nh, InterfaceC1098bI interfaceC1098bI) {
        int iA = ((PG) nh).a(interfaceC1098bI);
        return M(iA) + iA;
    }

    public static int L(String str) {
        int length;
        try {
            length = AbstractC1822pI.c(str);
        } catch (C1770oI unused) {
            length = str.getBytes(AbstractC2288yH.f22010a).length;
        }
        return M(length) + length;
    }

    public static int M(int i8) {
        return (352 - (Integer.numberOfLeadingZeros(i8) * 9)) >>> 6;
    }

    public static int N(long j8) {
        return (640 - (Long.numberOfLeadingZeros(j8) * 9)) >>> 6;
    }

    public static int f0(int i8, NH nh, InterfaceC1098bI interfaceC1098bI) {
        int iM = M(i8 << 3);
        return ((PG) nh).a(interfaceC1098bI) + iM + iM;
    }

    public final void O(String str, C1770oI c1770oI) throws I0.u {
        f19075d.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c1770oI);
        byte[] bytes = str.getBytes(AbstractC2288yH.f22010a);
        try {
            int length = bytes.length;
            c0(length);
            u(0, bytes, length);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(e8);
        }
    }

    public abstract void P(byte b8);

    public abstract void Q(int i8, boolean z7);

    public abstract void R(int i8, XG xg);

    public abstract void S(int i8, int i9);

    public abstract void T(int i8);

    public abstract void U(int i8, long j8);

    public abstract void V(long j8);

    public abstract void W(int i8, int i9);

    public abstract void X(int i8);

    public abstract void Y(int i8, NH nh, InterfaceC1098bI interfaceC1098bI);

    public abstract void Z(int i8, String str);

    public abstract void a0(int i8, int i9);

    public abstract void b0(int i8, int i9);

    public abstract void c0(int i8);

    public abstract void d0(int i8, long j8);

    public abstract void e0(long j8);
}
