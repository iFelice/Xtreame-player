package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.as, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1071as extends AbstractBinderC2328z5 implements InterfaceC0801Kb {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ int f17977K = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2040te f17978G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final JSONObject f17979H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f17980I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f17981J;

    public BinderC1071as(String str, InterfaceC0771Ib interfaceC0771Ib, C2040te c2040te, long j8) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
        JSONObject jSONObject = new JSONObject();
        this.f17979H = jSONObject;
        this.f17981J = false;
        this.f17978G = c2040te;
        this.f17980I = j8;
        try {
            jSONObject.put("adapter_version", interfaceC0771Ib.zzf().toString());
            jSONObject.put("sdk_version", interfaceC0771Ib.zzg().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    public final synchronized void A3(int i8, String str) {
        try {
            if (this.f17981J) {
                return;
            }
            try {
                this.f17979H.put("signal_error", str);
                J7 j8 = Q7.f15940t1;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    JSONObject jSONObject = this.f17979H;
                    p083k3.l.f25980A.f25990j.getClass();
                    jSONObject.put("latency", SystemClock.elapsedRealtime() - this.f17980I);
                }
                if (((Boolean) c3099q.f26627c.a(Q7.f15932s1)).booleanValue()) {
                    this.f17979H.put("signal_error_code", i8);
                }
            } catch (JSONException unused) {
            }
            this.f17978G.b(this.f17979H);
            this.f17981J = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void o(String str) {
        if (this.f17981J) {
            return;
        }
        if (str == null) {
            z3("Adapter returned null signals");
            return;
        }
        try {
            this.f17979H.put("signals", str);
            J7 j8 = Q7.f15940t1;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                JSONObject jSONObject = this.f17979H;
                p083k3.l.f25980A.f25990j.getClass();
                jSONObject.put("latency", SystemClock.elapsedRealtime() - this.f17980I);
            }
            if (((Boolean) c3099q.f26627c.a(Q7.f15932s1)).booleanValue()) {
                this.f17979H.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f17978G.b(this.f17979H);
        this.f17981J = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            String string = parcel.readString();
            A5.b(parcel);
            o(string);
        } else if (i8 == 2) {
            String string2 = parcel.readString();
            A5.b(parcel);
            z3(string2);
        } else {
            if (i8 != 3) {
                return false;
            }
            C3117z0 c3117z0 = (C3117z0) A5.a(parcel, C3117z0.CREATOR);
            A5.b(parcel);
            synchronized (this) {
                A3(2, c3117z0.f26630H);
            }
        }
        parcel2.writeNoException();
        return true;
    }

    public final synchronized void z3(String str) {
        A3(2, str);
    }

    public final synchronized void zzd() {
        if (this.f17981J) {
            return;
        }
        try {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15932s1)).booleanValue()) {
                this.f17979H.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f17978G.b(this.f17979H);
        this.f17981J = true;
    }
}
