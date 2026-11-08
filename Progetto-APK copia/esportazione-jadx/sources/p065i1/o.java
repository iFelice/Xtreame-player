package p065i1;

import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p094m0.K;
import p117p0.M;
import p190y4.k;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class o extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H f25550c;

    public o(String str, String str2, d0 d0Var) {
        super(str);
        H1.d(!d0Var.isEmpty());
        this.f25549b = str2;
        H hS = H.s(d0Var);
        this.f25550c = hS;
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return Objects.equals(this.f25537a, oVar.f25537a) && Objects.equals(this.f25549b, oVar.f25549b) && this.f25550c.equals(oVar.f25550c);
    }

    public final int hashCode() {
        int iE = U2.e(this.f25537a, 527, 31);
        String str = this.f25549b;
        return this.f25550c.hashCode() + ((iE + (str != null ? str.hashCode() : 0)) * 31);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // p065i1.j, p094m0.M
    public final void populateMediaMetadata(K k8) {
        String str = this.f25537a;
        str.getClass();
        byte b8 = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b8 = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b8 = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b8 = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b8 = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b8 = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b8 = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b8 = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b8 = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b8 = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b8 = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b8 = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b8 = 15;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b8 = 16;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b8 = 17;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b8 = 18;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b8 = 19;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b8 = 20;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b8 = 21;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b8 = 22;
                }
                break;
        }
        H h8 = this.f25550c;
        try {
            switch (b8) {
                case 0:
                case 10:
                    k8.c((CharSequence) h8.get(0));
                    break;
                case 1:
                case 11:
                    k8.e((CharSequence) h8.get(0));
                    break;
                case 2:
                case 13:
                    String str2 = (String) h8.get(0);
                    int i8 = Integer.parseInt(str2.substring(2, 4));
                    int i9 = Integer.parseInt(str2.substring(0, 2));
                    k8.i(Integer.valueOf(i8));
                    k8.h(Integer.valueOf(i9));
                    break;
                case 3:
                case 18:
                    k8.d((CharSequence) h8.get(0));
                    break;
                case 4:
                case 19:
                    k8.b((CharSequence) h8.get(0));
                    break;
                case 5:
                case 20:
                    k8.f((CharSequence) h8.get(0));
                    break;
                case 6:
                case 21:
                    String[] strArrC0 = M.c0((String) h8.get(0));
                    int i10 = Integer.parseInt(strArrC0[0]);
                    Integer numValueOf = strArrC0.length > 1 ? Integer.valueOf(Integer.parseInt(strArrC0[1])) : null;
                    k8.p(Integer.valueOf(i10));
                    k8.o(numValueOf);
                    break;
                case 7:
                case 17:
                    k8.n((CharSequence) h8.get(0));
                    break;
                case 8:
                case 16:
                    k8.q((CharSequence) h8.get(0));
                    break;
                case 9:
                case 22:
                    k8.j(Integer.valueOf(Integer.parseInt((String) h8.get(0))));
                    break;
                case 12:
                    Integer numL0 = k.l0((String) h8.get(0));
                    if (numL0 != null) {
                        String strA = k.a(numL0.intValue());
                        if (strA != null) {
                            k8.g(strA);
                        }
                    } else {
                        k8.g((CharSequence) h8.get(0));
                    }
                    break;
                case 14:
                    ArrayList arrayListA = a((String) h8.get(0));
                    int size = arrayListA.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                k8.h((Integer) arrayListA.get(2));
                            }
                        }
                        k8.i((Integer) arrayListA.get(1));
                    }
                    k8.j((Integer) arrayListA.get(0));
                    break;
                case 15:
                    ArrayList arrayListA2 = a((String) h8.get(0));
                    int size2 = arrayListA2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                k8.k((Integer) arrayListA2.get(2));
                            }
                        }
                        k8.l((Integer) arrayListA2.get(1));
                    }
                    k8.m((Integer) arrayListA2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": description=" + this.f25549b + ": values=" + this.f25550c;
    }
}
