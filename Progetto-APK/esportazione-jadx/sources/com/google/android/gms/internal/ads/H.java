package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
public final class H implements O {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final int[] f13671I = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2218x f13672J = new C2218x(new C1561kH(3));

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C2218x f13673K = new C2218x(new C1561kH(4));

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public PA f13674G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1561kH f13675H = new C1561kH(10);

    /* JADX WARN: Code duplicated, block: B:114:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:142:0x0214  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.O
    public final synchronized L[] a(Uri uri, Map map) {
        ArrayList arrayList;
        byte b8;
        int i8;
        try {
            arrayList = new ArrayList(21);
            List list = (List) map.get("Content-Type");
            String str = null;
            if (list != null && !list.isEmpty()) {
                str = (String) list.get(0);
            }
            int i9 = 20;
            if (str != null) {
                String strE = AbstractC2140va.e(str);
                switch (strE.hashCode()) {
                    case -2123537834:
                        if (strE.equals("audio/eac3-joc")) {
                            b8 = 2;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1662384011:
                        if (strE.equals("video/mp2p")) {
                            b8 = 20;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1662384007:
                        if (strE.equals("video/mp2t")) {
                            b8 = 21;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1662095187:
                        if (strE.equals("video/webm")) {
                            b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1606874997:
                        if (strE.equals("audio/amr-wb")) {
                            b8 = 6;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1487656890:
                        if (strE.equals("image/avif")) {
                            b8 = 31;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1487464693:
                        if (strE.equals("image/heic")) {
                            b8 = 30;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1487464690:
                        if (strE.equals("image/heif")) {
                            b8 = 29;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1487394660:
                        if (strE.equals("image/jpeg")) {
                            b8 = 24;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1487018032:
                        if (strE.equals("image/webp")) {
                            b8 = 27;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1248337486:
                        if (strE.equals("application/mp4")) {
                            b8 = 18;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1079884372:
                        if (strE.equals("video/x-msvideo")) {
                            b8 = 25;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -1004728940:
                        if (strE.equals("text/vtt")) {
                            b8 = 23;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -879272239:
                        if (strE.equals("image/bmp")) {
                            b8 = 28;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -879258763:
                        if (strE.equals("image/png")) {
                            b8 = 26;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -387023398:
                        if (strE.equals("audio/x-matroska")) {
                            b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case -43467528:
                        if (strE.equals("application/webm")) {
                            b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 13915911:
                        if (strE.equals("video/x-flv")) {
                            b8 = 8;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 187078296:
                        if (strE.equals("audio/ac3")) {
                            b8 = 0;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 187078297:
                        if (strE.equals("audio/ac4")) {
                            b8 = 3;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 187078669:
                        if (strE.equals("audio/amr")) {
                            b8 = 4;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 187090232:
                        if (strE.equals("audio/mp4")) {
                            b8 = 17;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 187091926:
                        if (strE.equals("audio/ogg")) {
                            b8 = 19;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 187099443:
                        if (strE.equals("audio/wav")) {
                            b8 = 22;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1331848029:
                        if (strE.equals("video/mp4")) {
                            b8 = 16;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1503095341:
                        if (strE.equals("audio/3gpp")) {
                            b8 = 5;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1504578661:
                        if (strE.equals("audio/eac3")) {
                            b8 = 1;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1504619009:
                        if (strE.equals("audio/flac")) {
                            b8 = 7;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1504824762:
                        if (strE.equals("audio/midi")) {
                            b8 = 9;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1504831518:
                        if (strE.equals("audio/mpeg")) {
                            b8 = 15;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 1505118770:
                        if (strE.equals("audio/webm")) {
                            b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                        } else {
                            b8 = -1;
                        }
                        break;
                    case 2039520277:
                        if (strE.equals("video/x-matroska")) {
                            b8 = 10;
                        } else {
                            b8 = -1;
                        }
                        break;
                    default:
                        b8 = -1;
                        break;
                }
                switch (b8) {
                    case 0:
                    case 1:
                    case 2:
                        i8 = 0;
                        break;
                    case 3:
                        i8 = 1;
                        break;
                    case 4:
                    case 5:
                    case 6:
                        i8 = 3;
                        break;
                    case 7:
                        i8 = 4;
                        break;
                    case 8:
                        i8 = 5;
                        break;
                    case 9:
                        i8 = 15;
                        break;
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        i8 = 6;
                        break;
                    case 15:
                        i8 = 7;
                        break;
                    case 16:
                    case 17:
                    case 18:
                        i8 = 8;
                        break;
                    case 19:
                        i8 = 9;
                        break;
                    case 20:
                        i8 = 10;
                        break;
                    case 21:
                        i8 = 11;
                        break;
                    case 22:
                        i8 = 12;
                        break;
                    case 23:
                        i8 = 13;
                        break;
                    case 24:
                        i8 = 14;
                        break;
                    case 25:
                        i8 = 16;
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        i8 = 17;
                        break;
                    case 27:
                        i8 = 18;
                        break;
                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        i8 = 19;
                        break;
                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                        i8 = 20;
                        break;
                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                        i8 = 21;
                        break;
                    default:
                        i8 = -1;
                        break;
                }
            } else {
                i8 = -1;
            }
            if (i8 != -1) {
                b(i8, arrayList);
            }
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                i9 = -1;
            } else if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
                i9 = 0;
            } else if (lastPathSegment.endsWith(".ac4")) {
                i9 = 1;
            } else if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
                i9 = 2;
            } else if (lastPathSegment.endsWith(".amr")) {
                i9 = 3;
            } else if (lastPathSegment.endsWith(".flac")) {
                i9 = 4;
            } else if (lastPathSegment.endsWith(".flv")) {
                i9 = 5;
            } else if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
                i9 = 15;
            } else if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
                i9 = 6;
            } else if (lastPathSegment.endsWith(".mp3")) {
                i9 = 7;
            } else if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
                i9 = 8;
            } else if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
                i9 = 9;
            } else if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
                i9 = 10;
            } else if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                i9 = 11;
            } else if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
                i9 = 12;
            } else if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
                i9 = 13;
            } else if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
                i9 = 14;
            } else if (lastPathSegment.endsWith(".avi")) {
                i9 = 16;
            } else if (lastPathSegment.endsWith(".png")) {
                i9 = 17;
            } else if (lastPathSegment.endsWith(".webp")) {
                i9 = 18;
            } else if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
                i9 = 19;
            } else if (!lastPathSegment.endsWith(".heic") && !lastPathSegment.endsWith(".heif")) {
                if (lastPathSegment.endsWith(".avif")) {
                    i9 = 21;
                } else {
                    i9 = -1;
                }
            }
            if (i9 != -1 && i9 != i8) {
                b(i9, arrayList);
            }
            int[] iArr = f13671I;
            for (int i10 = 0; i10 < 21; i10++) {
                int i11 = iArr[i10];
                if (i11 != i8 && i11 != i9) {
                    b(i11, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (L[]) arrayList.toArray(new L[arrayList.size()]);
    }

    public final void b(int i8, ArrayList arrayList) {
        C1561kH c1561kH = this.f13675H;
        switch (i8) {
            case 0:
                arrayList.add(new M1(1));
                break;
            case 1:
                arrayList.add(new M1(2));
                break;
            case 2:
                arrayList.add(new B2());
                break;
            case 3:
                arrayList.add(new C1338g0());
                break;
            case 4:
                L lH = f13672J.h(0);
                if (lH == null) {
                    arrayList.add(new C1959s0());
                } else {
                    arrayList.add(lH);
                }
                break;
            case 5:
                arrayList.add(new C2063u0());
                break;
            case 6:
                arrayList.add(new C1287f1(new C1132c1(), 0, c1561kH));
                break;
            case 7:
                arrayList.add(new C1493j1());
                break;
            case 8:
                arrayList.add(new C2220x1(c1561kH, 0, PA.f15340K));
                arrayList.add(new A1(0, c1561kH));
                break;
            case 9:
                arrayList.add(new M1(0));
                break;
            case 10:
                arrayList.add(new T2());
                break;
            case 11:
                if (this.f13674G == null) {
                    C1969sA c1969sA = AbstractC2073uA.f21207H;
                    this.f13674G = PA.f15340K;
                }
                arrayList.add(new X2(c1561kH, new Ys(), new I2.c(this.f13674G)));
                break;
            case 12:
                C1289f3 c1289f3 = new C1289f3();
                c1289f3.f18718c = 0;
                c1289f3.f18719d = -1L;
                c1289f3.f18721f = -1;
                c1289f3.f18722g = -1L;
                arrayList.add(c1289f3);
                break;
            case 14:
                arrayList.add(new C1907r0());
                break;
            case 15:
                L lH2 = f13673K.h(new Object[0]);
                if (lH2 != null) {
                    arrayList.add(lH2);
                }
                break;
            case 16:
                arrayList.add(new C1442i0(c1561kH));
                break;
            case 17:
                arrayList.add(new C1907r0(1));
                break;
            case 18:
                arrayList.add(new C1856q0(2));
                break;
            case 19:
                arrayList.add(new C1907r0(0));
                break;
            case 20:
                arrayList.add(new C1856q0(1));
                break;
            case 21:
                arrayList.add(new C1856q0(0));
                break;
        }
    }
}
