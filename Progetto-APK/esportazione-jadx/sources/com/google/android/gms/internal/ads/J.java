package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import java.io.IOException;
import java.util.IllegalFormatException;
import java.util.Locale;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class J implements InterfaceC1195dC, InterfaceC1942rk, InterfaceC2121v6, Dw {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14098G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f14099H;

    public J(String str) {
        this.f14098G = 0;
        this.f14099H = str;
    }

    public static J a(C1534jr c1534jr) {
        String str;
        c1534jr.k(2);
        int iW = c1534jr.w();
        int i8 = iW >> 1;
        int i9 = iW & 1;
        int iW2 = c1534jr.w() >> 3;
        if (i8 == 4 || i8 == 5 || i8 == 7) {
            str = "dvhe";
        } else if (i8 == 8) {
            str = "hev1";
        } else {
            if (i8 != 9) {
                return null;
            }
            str = "avc3";
        }
        int i10 = iW2 | (i9 << 5);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i8);
        sb.append(i10 >= 10 ? "." : ".0");
        sb.append(i10);
        return new J(sb.toString());
    }

    public static String f(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e8) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e8);
                str2 = A0.O.B(str2, " [", TextUtils.join(", ", objArr), "]");
            }
        }
        return com.google.protobuf.U2.l(str, " : ", str2);
    }

    public final void b(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", f(this.f14099H, str, objArr));
        }
    }

    public final void c(RemoteException remoteException, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", f(this.f14099H, str, objArr), remoteException);
        }
    }

    public final void d(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            Log.i("PlayCore", f(this.f14099H, str, objArr));
        }
    }

    public final void e(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            Log.w("PlayCore", f(this.f14099H, str, objArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2121v6
    public final void g(C7 c8) {
        String str = this.f14099H;
        c8.d();
        D7.A((D7) c8.f20255H, str);
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        String str = this.f14099H;
        int i8 = C1172cq.f18245I;
        ((SQLiteDatabase) obj).delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
    }

    public J(String str, int i8) {
        this.f14098G = i8;
        if (i8 != 11) {
            this.f14099H = "MalformedJson";
            return;
        }
        this.f14099H = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        switch (this.f14098G) {
            case 4:
                ((InterfaceC0705Dk) obj).c(this.f14099H);
                break;
            case 5:
                ((InterfaceC0705Dk) obj).i(this.f14099H);
                break;
            case 6:
                ((InterfaceC0705Dk) obj).s(this.f14099H);
                break;
            default:
                ((InterfaceC0925Sk) obj).b(this.f14099H);
                break;
        }
    }

    public /* synthetic */ J(String str, int i8, int i9) {
        this.f14098G = i8;
        this.f14099H = str;
    }

    public /* synthetic */ J(String str, Object obj) {
        this.f14098G = 9;
        this.f14099H = str;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003a  */
    public J(JsonReader jsonReader) throws IOException {
        byte b8;
        this.f14098G = 10;
        jsonReader.beginObject();
        String strNextString = HttpUrl.FRAGMENT_ENCODE_SET;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            int iHashCode = strNextName.hashCode();
            if (iHashCode != -1724546052) {
                if (iHashCode == 3059181 && strNextName.equals("code")) {
                    b8 = 0;
                } else {
                    b8 = -1;
                }
            } else if (strNextName.equals("description")) {
                b8 = 1;
            } else {
                b8 = -1;
            }
            if (b8 == 0) {
                jsonReader.nextInt();
            } else if (b8 != 1) {
                jsonReader.skipValue();
            } else {
                strNextString = jsonReader.nextString();
            }
        }
        jsonReader.endObject();
        this.f14099H = strNextString;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        switch (this.f14098G) {
            case 1:
                p083k3.l.f25980A.f25987g.i(this.f14099H, th);
                break;
            default:
                p083k3.l.f25980A.f25987g.h(this.f14099H, th);
                break;
        }
    }
}
