package com.google.android.gms.internal.pal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.os.Parcel;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.c2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2687c2 extends AbstractBinderC2478o implements InterfaceC2711f2 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2774n1 f23755H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C2758l1 f23756I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C2782o1 f23757J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f23758K;

    public BinderC2687c2(Context context) {
        super("com.google.android.gms.ads.adshield.internal.IAdShieldClient", 2);
        this.f23758K = false;
        int i8 = C2774n1.f23965C;
        AbstractC2766m1.m(context, false);
        C2774n1 c2774n1 = new C2774n1(context, 0);
        this.f23755H = c2774n1;
        this.f23757J = new C2782o1(c2774n1);
        int i9 = C2758l1.f23922D;
        AbstractC2766m1.m(context, true);
        this.f23756I = new C2758l1(context);
    }

    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        int i9 = 0;
        switch (i8) {
            case 1:
                parcel2.writeNoException();
                parcel2.writeString("ms");
                return true;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                AbstractC2671a2.a(parcel);
                C2782o1 c2782o1 = this.f23757J;
                c2782o1.f23975a = string;
                c2782o1.f23976b = string2;
                parcel2.writeNoException();
                return true;
            case 3:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                Uri uri = (Uri) R3.b.v0(aVarJ0);
                C2782o1 c2782o2 = this.f23757J;
                c2782o2.getClass();
                uri.getClass();
                try {
                    if (uri.getHost().equals(c2782o2.f23975a) && uri.getPath().equals(c2782o2.f23976b)) {
                        i9 = 1;
                    }
                } catch (NullPointerException unused) {
                }
                parcel2.writeNoException();
                parcel2.writeInt(i9);
                return true;
            case 4:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                Uri uri2 = (Uri) R3.b.v0(aVarJ1);
                C2782o1 c2782o3 = this.f23757J;
                c2782o3.getClass();
                uri2.getClass();
                try {
                    String host = uri2.getHost();
                    for (String str : c2782o3.f23977c) {
                        if (host.endsWith(str)) {
                            i9 = 1;
                            parcel2.writeNoException();
                            parcel2.writeInt(i9);
                            return true;
                        }
                    }
                } catch (NullPointerException unused2) {
                }
                parcel2.writeNoException();
                parcel2.writeInt(i9);
                return true;
            case 5:
                String string3 = parcel.readString();
                AbstractC2671a2.a(parcel);
                C2782o1 c2782o4 = this.f23757J;
                c2782o4.getClass();
                c2782o4.f23977c = string3.split(",");
                parcel2.writeNoException();
                return true;
            case 6:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                R3.b bVarJ0 = j0(aVarJ2, aVarJ3, true);
                parcel2.writeNoException();
                AbstractC2671a2.b(parcel2, bVarJ0);
                return true;
            case 7:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                String strZzg = zzg(aVarJ4, null);
                parcel2.writeNoException();
                parcel2.writeString(strZzg);
                return true;
            case 8:
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                String string4 = parcel.readString();
                AbstractC2671a2.a(parcel);
                String strZze = zze(aVarJ5, string4);
                parcel2.writeNoException();
                parcel2.writeString(strZze);
                return true;
            case 9:
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                zzl(aVarJ6);
                parcel2.writeNoException();
                return true;
            case 10:
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                R3.b bVarJ1 = j0(aVarJ7, aVarJ8, false);
                parcel2.writeNoException();
                AbstractC2671a2.b(parcel2, bVarJ1);
                return true;
            case 11:
                String string5 = parcel.readString();
                int i10 = AbstractC2671a2.f23725a;
                boolean z7 = parcel.readInt() != 0;
                AbstractC2671a2.a(parcel);
                C2758l1 c2758l1 = this.f23756I;
                if (c2758l1 != null) {
                    c2758l1.f23923C = new p075j3.a(string5, z7);
                    this.f23758K = true;
                    i9 = 1;
                }
                parcel2.writeNoException();
                parcel2.writeInt(i9);
                return true;
            case 12:
                R3.a aVarJ9 = R3.b.j0(parcel.readStrongBinder());
                byte[] bArrCreateByteArray = parcel.createByteArray();
                AbstractC2671a2.a(parcel);
                String strZzg2 = zzg(aVarJ9, bArrCreateByteArray);
                parcel2.writeNoException();
                parcel2.writeString(strZzg2);
                return true;
            case 13:
                R3.a aVarJ10 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                C2774n1 c2774n1 = this.f23755H;
                Context context = (Context) R3.b.v0(aVarJ10);
                c2774n1.getClass();
                char[] cArr = C1.f23478a;
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    throw new IllegalStateException("The caller must not be called from the UI thread.");
                }
                String strF = c2774n1.f(context, null, 1, null, null, null);
                parcel2.writeNoException();
                parcel2.writeString(strF);
                return true;
            case 14:
                R3.a aVarJ11 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ12 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ13 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                String strZzk = zzk(aVarJ11, aVarJ12, aVarJ13);
                parcel2.writeNoException();
                parcel2.writeString(strZzk);
                return true;
            case 15:
                R3.a aVarJ14 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                C2774n1 c2774n2 = this.f23755H;
                View view = (View) R3.b.v0(aVarJ14);
                c2774n2.getClass();
                if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23933j)).booleanValue()) {
                    if (c2774n2.f23958v == null) {
                        A1 a8 = AbstractC2750k1.f23888t;
                        c2774n2.f23958v = new F1(a8.f23425a, a8.f23441q);
                    }
                    c2774n2.f23958v.a(view);
                }
                parcel2.writeNoException();
                return true;
            case 16:
            default:
                return false;
            case 17:
                R3.a aVarJ15 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ16 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ17 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ18 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2671a2.a(parcel);
                String strF2 = this.f23755H.f((Context) R3.b.v0(aVarJ15), (String) R3.b.v0(aVarJ16), 3, (View) R3.b.v0(aVarJ17), (Activity) R3.b.v0(aVarJ18), null);
                parcel2.writeNoException();
                parcel2.writeString(strF2);
                return true;
            case 18:
                parcel2.writeNoException();
                int i11 = AbstractC2671a2.f23725a;
                parcel2.writeInt(1);
                return true;
            case 19:
                parcel2.writeNoException();
                int i12 = AbstractC2671a2.f23725a;
                parcel2.writeInt(1);
                return true;
            case 20:
                int i13 = this.f23755H instanceof C2774n1 ? 1 : -1;
                parcel2.writeNoException();
                parcel2.writeInt(i13);
                return true;
        }
    }

    public final R3.b j0(R3.a aVar, R3.a aVar2, boolean z7) {
        Uri uriA;
        try {
            Uri uri = (Uri) R3.b.v0(aVar);
            Context context = (Context) R3.b.v0(aVar2);
            C2782o1 c2782o1 = this.f23757J;
            if (z7) {
                AbstractC2750k1 abstractC2750k1 = (AbstractC2750k1) c2782o1.f23978d;
                abstractC2750k1.getClass();
                char[] cArr = C1.f23478a;
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    throw new IllegalStateException("The caller must not be called from the UI thread.");
                }
                uriA = C2782o1.a(uri, abstractC2750k1.f(context, null, 1, null, null, null));
            } else {
                c2782o1.getClass();
                try {
                    uriA = C2782o1.a(uri, ((AbstractC2750k1) c2782o1.f23978d).f(context, uri.getQueryParameter("ai"), 3, null, null, null));
                } catch (UnsupportedOperationException unused) {
                    throw new C2790p1("Provided Uri is not in a valid state");
                }
            }
            return new R3.b(uriA);
        } catch (C2790p1 unused2) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final String zze(R3.a aVar, String str) {
        return this.f23755H.f((Context) R3.b.v0(aVar), str, 3, null, null, null);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final String zzg(R3.a aVar, byte[] bArr) {
        byte[] bArrB;
        Context context = (Context) R3.b.v0(aVar);
        C2774n1 c2774n1 = this.f23755H;
        c2774n1.getClass();
        char[] cArr = C1.f23478a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("The caller must not be called from the UI thread.");
        }
        String strF = c2774n1.f(context, null, 1, null, null, bArr);
        C2758l1 c2758l1 = this.f23756I;
        if (c2758l1 == null || !this.f23758K) {
            return strF;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("The caller must not be called from the UI thread.");
        }
        String strF2 = c2758l1.f(context, null, 1, null, null, bArr);
        boolean z7 = AbstractC2710f1.f23810a;
        F0 f0M = G0.m();
        try {
            byte[] bytes = strF.length() < 3 ? strF.getBytes("ISO-8859-1") : AbstractC2864y4.O(strF, true);
            C2796q c2796qO = r.o(0, bytes, bytes.length);
            if (f0M.f23476I) {
                f0M.f();
                f0M.f23476I = false;
            }
            G0.n((G0) f0M.f23475H, c2796qO);
            byte[] bytes2 = strF2.length() < 3 ? strF2.getBytes("ISO-8859-1") : AbstractC2864y4.O(strF2, true);
            C2796q c2796qO2 = r.o(0, bytes2, bytes2.length);
            if (f0M.f23476I) {
                f0M.f();
                f0M.f23476I = false;
            }
            G0.o((G0) f0M.f23475H, c2796qO2);
            bArrB = ((G0) f0M.d()).b();
        } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
            bArrB = null;
        }
        String strP = bArrB != null ? AbstractC2864y4.p(bArrB, true) : Integer.toString(7);
        this.f23758K = false;
        return strP;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final String zzk(R3.a aVar, R3.a aVar2, R3.a aVar3) {
        return this.f23755H.f((Context) R3.b.v0(aVar), null, 2, (View) R3.b.v0(aVar2), (Activity) R3.b.v0(aVar3), null);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2711f2
    public final void zzl(R3.a aVar) {
        Long l4;
        MotionEvent motionEvent = (MotionEvent) R3.b.v0(aVar);
        AbstractC2750k1 abstractC2750k1 = (AbstractC2750k1) this.f23757J.f23978d;
        synchronized (abstractC2750k1) {
            try {
                if (abstractC2750k1.f23905q) {
                    abstractC2750k1.f23895g = 0L;
                    abstractC2750k1.f23891c = 0L;
                    abstractC2750k1.f23892d = 0L;
                    abstractC2750k1.f23893e = 0L;
                    abstractC2750k1.f23894f = 0L;
                    abstractC2750k1.f23896h = 0L;
                    abstractC2750k1.f23897i = 0L;
                    if (abstractC2750k1.f23890b.size() > 0) {
                        Iterator it = abstractC2750k1.f23890b.iterator();
                        while (it.hasNext()) {
                            ((MotionEvent) it.next()).recycle();
                        }
                        abstractC2750k1.f23890b.clear();
                    } else {
                        MotionEvent motionEvent2 = abstractC2750k1.f23889a;
                        if (motionEvent2 != null) {
                            motionEvent2.recycle();
                        }
                    }
                    abstractC2750k1.f23889a = null;
                    abstractC2750k1.f23905q = false;
                }
                int action = motionEvent.getAction();
                if (action == 0) {
                    abstractC2750k1.f23898j = 0.0d;
                    abstractC2750k1.f23899k = motionEvent.getRawX();
                    abstractC2750k1.f23900l = motionEvent.getRawY();
                } else if (action == 1 || action == 2) {
                    double rawX = motionEvent.getRawX();
                    double rawY = motionEvent.getRawY();
                    double d6 = rawX - abstractC2750k1.f23899k;
                    double d8 = rawY - abstractC2750k1.f23900l;
                    abstractC2750k1.f23898j += Math.sqrt((d8 * d8) + (d6 * d6));
                    abstractC2750k1.f23899k = rawX;
                    abstractC2750k1.f23900l = rawY;
                }
                int action2 = motionEvent.getAction();
                if (action2 != 0) {
                    try {
                        if (action2 == 1) {
                            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                            abstractC2750k1.f23889a = motionEventObtain;
                            abstractC2750k1.f23890b.add(motionEventObtain);
                            if (abstractC2750k1.f23890b.size() > 6) {
                                ((MotionEvent) abstractC2750k1.f23890b.remove()).recycle();
                            }
                            abstractC2750k1.f23893e++;
                            abstractC2750k1.f23895g = abstractC2750k1.a(new Throwable().getStackTrace());
                        } else if (action2 == 2) {
                            abstractC2750k1.f23892d += (long) (motionEvent.getHistorySize() + 1);
                            B1 b1E = abstractC2750k1.e(motionEvent);
                            Long l8 = b1E.f23457d;
                            if (l8 != null && b1E.f23460g != null) {
                                abstractC2750k1.f23896h = l8.longValue() + b1E.f23460g.longValue() + abstractC2750k1.f23896h;
                            }
                            if (abstractC2750k1.f23907s != null && (l4 = b1E.f23458e) != null && b1E.f23461h != null) {
                                abstractC2750k1.f23897i = l4.longValue() + b1E.f23461h.longValue() + abstractC2750k1.f23897i;
                            }
                        } else if (action2 == 3) {
                            abstractC2750k1.f23894f++;
                        }
                    } catch (C2845w1 unused) {
                    }
                } else {
                    abstractC2750k1.f23901m = motionEvent.getX();
                    abstractC2750k1.f23902n = motionEvent.getY();
                    abstractC2750k1.f23903o = motionEvent.getRawX();
                    abstractC2750k1.f23904p = motionEvent.getRawY();
                    abstractC2750k1.f23891c++;
                }
                abstractC2750k1.f23906r = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
