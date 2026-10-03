package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.Spatializer;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2222x3 implements InterfaceC1828pO {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f21826G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f21827H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f21828I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f21829J;

    public C2222x3(Context context) {
        this.f21827H = new Object();
        this.f21829J = context;
    }

    public static /* bridge */ /* synthetic */ void d(C2222x3 c2222x3) {
        synchronized (c2222x3.f21827H) {
            try {
                C1706n6 c1706n6 = (C1706n6) c2222x3.f21828I;
                if (c1706n6 == null) {
                    return;
                }
                c1706n6.disconnect();
                c2222x3.f21828I = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1828pO
    public final PA a(int i8, C0961Ve c0961Ve, int[] iArr) {
        C1362gO c1362gO = new C1362gO((C1983sO) this.f21827H);
        int i9 = ((int[]) this.f21829J)[i8];
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = 0;
        int i11 = 0;
        while (i10 < c0961Ve.f17069a) {
            int i12 = i10;
            C1414hO c1414hO = new C1414hO(i8, c0961Ve, i12, (C1620lO) this.f21828I, iArr[i10], this.f21826G, c1362gO);
            int i13 = i11 + 1;
            int length = objArrCopyOf.length;
            if (length < i13) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i13));
            }
            objArrCopyOf[i11] = c1414hO;
            i10++;
            i11 = i13;
        }
        return AbstractC2073uA.s(i11, objArrCopyOf);
    }

    public final void b(C1983sO c1983sO, Looper looper) {
        if (((Spatializer.OnSpatializerStateChangedListener) this.f21829J) == null && ((Handler) this.f21828I) == null) {
            this.f21829J = new C1724nO(c1983sO);
            Handler handler = new Handler(looper);
            this.f21828I = handler;
            ((Spatializer) this.f21827H).addOnSpatializerStateChangedListener(new ExecutorC1885qe(handler, 2), (Spatializer.OnSpatializerStateChangedListener) this.f21829J);
        }
    }

    public final boolean c(C1804p0 c1804p0, C1097bH c1097bH) {
        boolean zEquals = "audio/eac3-joc".equals(c1804p0.f20383m);
        int i8 = c1804p0.f20362A;
        if (zEquals && i8 == 16) {
            i8 = 12;
        }
        int iN = Et.n(i8);
        if (iN == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iN);
        int i9 = c1804p0.f20363B;
        if (i9 != -1) {
            channelMask.setSampleRate(i9);
        }
        return ((Spatializer) this.f21827H).canBeSpatialized((AudioAttributes) c1097bH.a().f15180H, channelMask.build());
    }

    public C2222x3(C2274y3 c2274y3) {
        this.f21826G = false;
        this.f21827H = null;
        this.f21828I = null;
        this.f21829J = c2274y3;
    }

    public /* synthetic */ C2222x3(C1983sO c1983sO, C1620lO c1620lO, boolean z7, int[] iArr) {
        this.f21827H = c1983sO;
        this.f21828I = c1620lO;
        this.f21826G = z7;
        this.f21829J = iArr;
    }

    public C2222x3(Object obj, p135r2.b bVar) {
        this.f21826G = false;
        this.f21827H = obj;
        this.f21828I = bVar;
        this.f21829J = null;
    }

    public C2222x3(Spatializer spatializer) {
        this.f21827H = spatializer;
        this.f21826G = spatializer.getImmersiveAudioLevel() != 0;
    }
}
