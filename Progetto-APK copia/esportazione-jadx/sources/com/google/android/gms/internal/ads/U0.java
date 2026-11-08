package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
public final class U0 extends P0 {
    public static final Parcelable.Creator<U0> CREATOR = new E0(13);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f16781H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC2073uA f16782I;

    public U0(String str, String str2, PA pa) {
        super(str);
        p113o3.r.J(!pa.isEmpty());
        this.f16781H = str2;
        AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(pa);
        this.f16782I = abstractC2073uAT;
    }

    public static ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:74:0x0113  */
    @Override // com.google.android.gms.internal.ads.P0, com.google.android.gms.internal.ads.K9
    public final void b(A8 a8) {
        byte b8;
        switch (this.f15304G) {
            case "TAL":
                b8 = 6;
                break;
            case "TCM":
                b8 = 16;
                break;
            case "TDA":
                b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                break;
            case "TP1":
                b8 = 2;
                break;
            case "TP2":
                b8 = 4;
                break;
            case "TP3":
                b8 = 18;
                break;
            case "TRK":
                b8 = 8;
                break;
            case "TT2":
                b8 = 0;
                break;
            case "TXT":
                b8 = 20;
                break;
            case "TYE":
                b8 = 10;
                break;
            case "TALB":
                b8 = 7;
                break;
            case "TCOM":
                b8 = 17;
                break;
            case "TCON":
                b8 = 22;
                break;
            case "TDAT":
                b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                break;
            case "TDRC":
                b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                break;
            case "TDRL":
                b8 = 15;
                break;
            case "TEXT":
                b8 = 21;
                break;
            case "TIT2":
                b8 = 1;
                break;
            case "TPE1":
                b8 = 3;
                break;
            case "TPE2":
                b8 = 5;
                break;
            case "TPE3":
                b8 = 19;
                break;
            case "TRCK":
                b8 = 9;
                break;
            case "TYER":
                b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                break;
            default:
                b8 = -1;
                break;
        }
        AbstractC2073uA abstractC2073uA = this.f16782I;
        switch (b8) {
            case 0:
            case 1:
                a8.n((CharSequence) abstractC2073uA.get(0));
                break;
            case 2:
            case 3:
                a8.d((CharSequence) abstractC2073uA.get(0));
                break;
            case 4:
            case 5:
                a8.b((CharSequence) abstractC2073uA.get(0));
                break;
            case 6:
            case 7:
                a8.c((CharSequence) abstractC2073uA.get(0));
                break;
            case 8:
            case 9:
                String str = (String) abstractC2073uA.get(0);
                int i8 = Et.f13234a;
                String[] strArrSplit = str.split(MqttTopic.TOPIC_LEVEL_SEPARATOR, -1);
                try {
                    int i9 = Integer.parseInt(strArrSplit[0]);
                    Integer numValueOf = strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null;
                    a8.p(Integer.valueOf(i9));
                    a8.o(numValueOf);
                } catch (NumberFormatException unused) {
                    return;
                }
                break;
            case 10:
            case 11:
                try {
                    a8.j(Integer.valueOf(Integer.parseInt((String) abstractC2073uA.get(0))));
                } catch (NumberFormatException unused2) {
                    return;
                }
                break;
            case 12:
            case 13:
                try {
                    String str2 = (String) abstractC2073uA.get(0);
                    int i10 = Integer.parseInt(str2.substring(2, 4));
                    int i11 = Integer.parseInt(str2.substring(0, 2));
                    a8.i(Integer.valueOf(i10));
                    a8.h(Integer.valueOf(i11));
                } catch (NumberFormatException | StringIndexOutOfBoundsException unused3) {
                    return;
                }
                break;
            case 14:
                ArrayList arrayListA = a((String) abstractC2073uA.get(0));
                int size = arrayListA.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size == 3) {
                            a8.h((Integer) arrayListA.get(2));
                        }
                    }
                    a8.i((Integer) arrayListA.get(1));
                }
                a8.j((Integer) arrayListA.get(0));
                break;
            case 15:
                ArrayList arrayListA2 = a((String) abstractC2073uA.get(0));
                int size2 = arrayListA2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 == 3) {
                            a8.k((Integer) arrayListA2.get(2));
                        }
                    }
                    a8.l((Integer) arrayListA2.get(1));
                }
                a8.m((Integer) arrayListA2.get(0));
                break;
            case 16:
            case 17:
                a8.e((CharSequence) abstractC2073uA.get(0));
                break;
            case 18:
            case 19:
                a8.f((CharSequence) abstractC2073uA.get(0));
                break;
            case 20:
            case 21:
                a8.q((CharSequence) abstractC2073uA.get(0));
                break;
            case 22:
                Integer numE1 = Cw.E1((String) abstractC2073uA.get(0));
                if (numE1 != null) {
                    String strA = Q0.a(numE1.intValue());
                    if (strA != null) {
                        a8.g(strA);
                    }
                } else {
                    a8.g((CharSequence) abstractC2073uA.get(0));
                }
                break;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && U0.class == obj.getClass()) {
            U0 u7 = (U0) obj;
            if (Objects.equals(this.f15304G, u7.f15304G) && Objects.equals(this.f16781H, u7.f16781H) && this.f16782I.equals(u7.f16782I)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f15304G.hashCode() + 527;
        String str = this.f16781H;
        return this.f16782I.hashCode() + (((iHashCode * 31) + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.gms.internal.ads.P0
    public final String toString() {
        String strValueOf = String.valueOf(this.f16782I);
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15304G);
        sb.append(": description=");
        return com.google.protobuf.U2.n(sb, this.f16781H, ": values=", strValueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f15304G);
        parcel.writeString(this.f16781H);
        parcel.writeStringArray((String[]) this.f16782I.toArray(new String[0]));
    }
}
