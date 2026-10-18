package p117p0;

import android.util.Pair;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.U2;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.interfaces.IMediaList;
import p094m0.C3126i;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: renamed from: p0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3169g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f28081a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f28082b = {HttpUrl.FRAGMENT_ENCODE_SET, "A", "B", "C"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f28083c = Pattern.compile("^\\D?(\\d+)$");

    public static String a(int i8, boolean z7, int i9, int i10, int[] iArr, int i11) {
        Object[] objArr = new Object[5];
        objArr[0] = f28082b[i8];
        objArr[1] = Integer.valueOf(i9);
        objArr[2] = Integer.valueOf(i10);
        objArr[3] = Character.valueOf(z7 ? 'H' : 'L');
        objArr[4] = Integer.valueOf(i11);
        String str = M.f28050a;
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i12 = 0; i12 < length; i12++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i12])));
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:159:0x0248  */
    /* JADX WARN: Code duplicated, block: B:16:0x0052  */
    /* JADX WARN: Code duplicated, block: B:294:0x03f6 A[PHI: r1
      0x03f6: PHI (r1v43 int) = (r1v42 int), (r1v46 int), (r1v47 int), (r1v48 int), (r1v49 int), (r1v50 int) binds: [B:275:0x03c8, B:277:0x03cc, B:279:0x03d0, B:281:0x03d4, B:283:0x03d8, B:285:0x03dc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:474:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:82:0x0130  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Pair b(C3136t c3136t) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        char c8;
        Integer num;
        int iValueOf;
        Integer numValueOf;
        String str = c3136t.f27037k;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        boolean zEquals = "video/dolby-vision".equals(c3136t.f27041o);
        int i24 = 16;
        int i25 = 8;
        String str2 = c3136t.f27037k;
        if (zEquals) {
            if (strArrSplit.length < 3) {
                U2.w("Ignoring malformed Dolby Vision codec string: ", str2, "CodecSpecificDataUtil");
            } else {
                Matcher matcher = f28083c.matcher(strArrSplit[1]);
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    if (strGroup != null) {
                        strGroup.hashCode();
                        switch (strGroup) {
                            case "00":
                                c8 = 2;
                                num = 1;
                                break;
                            case "01":
                                c8 = 2;
                                num = 2;
                                break;
                            case "02":
                                iValueOf = 4;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "03":
                                iValueOf = 8;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "04":
                                iValueOf = 16;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "05":
                                iValueOf = 32;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "06":
                                iValueOf = 64;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "07":
                                iValueOf = 128;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "08":
                                iValueOf = 256;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "09":
                                iValueOf = Integer.valueOf(IMediaList.Event.ItemAdded);
                                num = iValueOf;
                                c8 = 2;
                                break;
                            case "10":
                                iValueOf = 1024;
                                num = iValueOf;
                                c8 = 2;
                                break;
                            default:
                                c8 = 2;
                                num = null;
                                break;
                        }
                    } else {
                        c8 = 2;
                        num = null;
                    }
                    if (num == null) {
                        U2.w("Unknown Dolby Vision profile string: ", strGroup, "CodecSpecificDataUtil");
                    } else {
                        String str3 = strArrSplit[c8];
                        if (str3 != null) {
                            str3.hashCode();
                            byte b8 = -1;
                            switch (str3.hashCode()) {
                                case 1537:
                                    if (str3.equals("01")) {
                                        b8 = 0;
                                    }
                                    break;
                                case 1538:
                                    if (str3.equals("02")) {
                                        b8 = 1;
                                    }
                                    break;
                                case 1539:
                                    if (str3.equals("03")) {
                                        b8 = 2;
                                    }
                                    break;
                                case 1540:
                                    if (str3.equals("04")) {
                                        b8 = 3;
                                    }
                                    break;
                                case 1541:
                                    if (str3.equals("05")) {
                                        b8 = 4;
                                    }
                                    break;
                                case 1542:
                                    if (str3.equals("06")) {
                                        b8 = 5;
                                    }
                                    break;
                                case 1543:
                                    if (str3.equals("07")) {
                                        b8 = 6;
                                    }
                                    break;
                                case 1544:
                                    if (str3.equals("08")) {
                                        b8 = 7;
                                    }
                                    break;
                                case 1545:
                                    if (str3.equals("09")) {
                                        b8 = 8;
                                    }
                                    break;
                                case 1567:
                                    if (str3.equals("10")) {
                                        b8 = 9;
                                    }
                                    break;
                                case 1568:
                                    if (str3.equals("11")) {
                                        b8 = 10;
                                    }
                                    break;
                                case 1569:
                                    if (str3.equals("12")) {
                                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                    }
                                    break;
                                case 1570:
                                    if (str3.equals("13")) {
                                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                    }
                                    break;
                            }
                            switch (b8) {
                                case 0:
                                    numValueOf = 1;
                                    break;
                                case 1:
                                    numValueOf = 2;
                                    break;
                                case 2:
                                    numValueOf = 4;
                                    break;
                                case 3:
                                    numValueOf = 8;
                                    break;
                                case 4:
                                    numValueOf = 16;
                                    break;
                                case 5:
                                    numValueOf = 32;
                                    break;
                                case 6:
                                    numValueOf = 64;
                                    break;
                                case 7:
                                    numValueOf = 128;
                                    break;
                                case 8:
                                    numValueOf = 256;
                                    break;
                                case 9:
                                    numValueOf = Integer.valueOf(IMediaList.Event.ItemAdded);
                                    break;
                                case 10:
                                    numValueOf = 1024;
                                    break;
                                case 11:
                                    numValueOf = 2048;
                                    break;
                                case 12:
                                    numValueOf = 4096;
                                    break;
                                default:
                                    numValueOf = null;
                                    break;
                            }
                        } else {
                            numValueOf = null;
                        }
                        if (numValueOf != null) {
                            return new Pair(num, numValueOf);
                        }
                        U2.w("Unknown Dolby Vision level string: ", str3, "CodecSpecificDataUtil");
                    }
                } else {
                    U2.w("Ignoring malformed Dolby Vision codec string: ", str2, "CodecSpecificDataUtil");
                }
            }
            return null;
        }
        String str4 = strArrSplit[0];
        str4.getClass();
        str4.hashCode();
        switch (str4) {
            case "ac-4":
                if (strArrSplit.length != 4) {
                    U2.w("Ignoring malformed AC-4 codec string: ", str2, "CodecSpecificDataUtil");
                } else {
                    try {
                        int i26 = Integer.parseInt(strArrSplit[1]);
                        int i27 = Integer.parseInt(strArrSplit[2]);
                        int i28 = Integer.parseInt(strArrSplit[3]);
                        if (i26 != 0) {
                            if (i26 != 1) {
                                if (i26 != 2) {
                                    i8 = -1;
                                    i9 = -1;
                                } else if (i27 == 1) {
                                    i8 = -1;
                                    i9 = 1026;
                                } else if (i27 == 2) {
                                    i8 = -1;
                                    i9 = 1028;
                                } else {
                                    i8 = -1;
                                    i9 = -1;
                                }
                            } else if (i27 == 0) {
                                i8 = -1;
                                i9 = 513;
                            } else if (i27 == 1) {
                                i8 = -1;
                                i9 = IMediaList.Event.ItemDeleted;
                            } else {
                                i8 = -1;
                                i9 = -1;
                            }
                        } else if (i27 == 0) {
                            i8 = -1;
                            i9 = 257;
                        } else {
                            i8 = -1;
                            i9 = -1;
                        }
                        if (i9 == i8) {
                            x.f("CodecSpecificDataUtil", "Unknown AC-4 profile: " + i26 + "." + i27);
                        } else {
                            if (i28 == 0) {
                                i10 = -1;
                                i24 = 1;
                            } else if (i28 == 1) {
                                i10 = -1;
                                i24 = 2;
                            } else if (i28 == 2) {
                                i10 = -1;
                                i24 = 4;
                            } else if (i28 == 3) {
                                i10 = -1;
                                i24 = 8;
                            } else if (i28 != 4) {
                                i10 = -1;
                                i24 = -1;
                            } else {
                                i10 = -1;
                            }
                            if (i24 != i10) {
                                return new Pair(Integer.valueOf(i9), Integer.valueOf(i24));
                            }
                            U2.v("Unknown AC-4 level: ", i28, "CodecSpecificDataUtil");
                        }
                    } catch (NumberFormatException unused) {
                        U2.w("Ignoring malformed AC-4 codec string: ", str2, "CodecSpecificDataUtil");
                    }
                }
                return null;
            case "av01":
                if (strArrSplit.length < 4) {
                    U2.w("Ignoring malformed AV1 codec string: ", str2, "CodecSpecificDataUtil");
                } else {
                    try {
                        int i29 = Integer.parseInt(strArrSplit[1]);
                        int i30 = Integer.parseInt(strArrSplit[2].substring(0, 2));
                        int i31 = Integer.parseInt(strArrSplit[3]);
                        if (i29 != 0) {
                            U2.v("Unknown AV1 profile: ", i29, "CodecSpecificDataUtil");
                        } else if (i31 == 8 || i31 == 10) {
                            if (i31 == 8) {
                                i11 = 1;
                            } else {
                                C3126i c3126i = c3136t.f27014E;
                                i11 = (c3126i == null || !(c3126i.f26875d != null || (i12 = c3126i.f26874c) == 7 || i12 == 6)) ? 2 : 4096;
                            }
                            switch (i30) {
                                case 0:
                                    i13 = -1;
                                    i14 = 1;
                                    break;
                                case 1:
                                    i13 = -1;
                                    i14 = 2;
                                    break;
                                case 2:
                                    i13 = -1;
                                    i14 = 4;
                                    break;
                                case 3:
                                    i13 = -1;
                                    i14 = 8;
                                    break;
                                case 4:
                                    i13 = -1;
                                    i14 = 16;
                                    break;
                                case 5:
                                    i13 = -1;
                                    i14 = 32;
                                    break;
                                case 6:
                                    i13 = -1;
                                    i14 = 64;
                                    break;
                                case 7:
                                    i13 = -1;
                                    i14 = 128;
                                    break;
                                case 8:
                                    i13 = -1;
                                    i14 = 256;
                                    break;
                                case 9:
                                    i13 = -1;
                                    i14 = IMediaList.Event.ItemAdded;
                                    break;
                                case 10:
                                    i13 = -1;
                                    i14 = 1024;
                                    break;
                                case 11:
                                    i14 = 2048;
                                    i13 = -1;
                                    break;
                                case 12:
                                    i13 = -1;
                                    i14 = 4096;
                                    break;
                                case 13:
                                    i14 = 8192;
                                    i13 = -1;
                                    break;
                                case 14:
                                    i14 = Http2.INITIAL_MAX_FRAME_SIZE;
                                    i13 = -1;
                                    break;
                                case 15:
                                    i14 = 32768;
                                    i13 = -1;
                                    break;
                                case 16:
                                    i14 = 65536;
                                    i13 = -1;
                                    break;
                                case 17:
                                    i14 = 131072;
                                    i13 = -1;
                                    break;
                                case 18:
                                    i14 = 262144;
                                    i13 = -1;
                                    break;
                                case 19:
                                    i14 = 524288;
                                    i13 = -1;
                                    break;
                                case 20:
                                    i14 = 1048576;
                                    i13 = -1;
                                    break;
                                case 21:
                                    i14 = 2097152;
                                    i13 = -1;
                                    break;
                                case 22:
                                    i14 = 4194304;
                                    i13 = -1;
                                    break;
                                case 23:
                                    i14 = 8388608;
                                    i13 = -1;
                                    break;
                                default:
                                    i13 = -1;
                                    i14 = -1;
                                    break;
                            }
                            if (i14 != i13) {
                                return new Pair(Integer.valueOf(i11), Integer.valueOf(i14));
                            }
                            U2.v("Unknown AV1 level: ", i30, "CodecSpecificDataUtil");
                        } else {
                            U2.v("Unknown AV1 bit depth: ", i31, "CodecSpecificDataUtil");
                        }
                    } catch (NumberFormatException unused2) {
                        U2.w("Ignoring malformed AV1 codec string: ", str2, "CodecSpecificDataUtil");
                    }
                }
                return null;
            case "avc1":
            case "avc2":
                if (strArrSplit.length < 2) {
                    U2.w("Ignoring malformed AVC codec string: ", str2, "CodecSpecificDataUtil");
                } else {
                    try {
                        if (strArrSplit[1].length() == 6) {
                            i15 = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                            i16 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                        } else if (strArrSplit.length >= 3) {
                            i15 = Integer.parseInt(strArrSplit[1]);
                            i16 = Integer.parseInt(strArrSplit[2]);
                        } else {
                            x.f("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str2);
                        }
                        if (i15 == 66) {
                            i17 = 1;
                        } else if (i15 == 77) {
                            i17 = 2;
                        } else if (i15 == 88) {
                            i17 = 4;
                        } else if (i15 == 100) {
                            i17 = 8;
                        } else if (i15 == 110) {
                            i17 = 16;
                        } else if (i15 != 122) {
                            i17 = i15 != 244 ? -1 : 64;
                        } else {
                            i17 = 32;
                        }
                        if (i17 == -1) {
                            U2.v("Unknown AVC profile: ", i15, "CodecSpecificDataUtil");
                        } else {
                            switch (i16) {
                                case 10:
                                    i18 = -1;
                                    i19 = 1;
                                    break;
                                case 11:
                                    i18 = -1;
                                    i19 = 4;
                                    break;
                                case 12:
                                    i18 = -1;
                                    i19 = 8;
                                    break;
                                case 13:
                                    i18 = -1;
                                    i19 = 16;
                                    break;
                                default:
                                    switch (i16) {
                                        case 20:
                                            i18 = -1;
                                            i19 = 32;
                                            break;
                                        case 21:
                                            i18 = -1;
                                            i19 = 64;
                                            break;
                                        case 22:
                                            i18 = -1;
                                            i19 = 128;
                                            break;
                                        default:
                                            switch (i16) {
                                                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                                    i18 = -1;
                                                    i19 = 256;
                                                    break;
                                                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                                    i18 = -1;
                                                    i19 = IMediaList.Event.ItemAdded;
                                                    break;
                                                case 32:
                                                    i18 = -1;
                                                    i19 = 1024;
                                                    break;
                                                default:
                                                    switch (i16) {
                                                        case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                                                            i19 = 2048;
                                                            i18 = -1;
                                                            break;
                                                        case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                                                            i18 = -1;
                                                            i19 = 4096;
                                                            break;
                                                        case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                                            i19 = 8192;
                                                            i18 = -1;
                                                            break;
                                                        default:
                                                            switch (i16) {
                                                                case 50:
                                                                    i19 = Http2.INITIAL_MAX_FRAME_SIZE;
                                                                    i18 = -1;
                                                                    break;
                                                                case 51:
                                                                    i19 = 32768;
                                                                    i18 = -1;
                                                                    break;
                                                                case 52:
                                                                    i19 = 65536;
                                                                    i18 = -1;
                                                                    break;
                                                                default:
                                                                    i18 = -1;
                                                                    i19 = -1;
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            if (i19 != i18) {
                                return new Pair(Integer.valueOf(i17), Integer.valueOf(i19));
                            }
                            U2.v("Unknown AVC level: ", i16, "CodecSpecificDataUtil");
                        }
                    } catch (NumberFormatException unused3) {
                        U2.w("Ignoring malformed AVC codec string: ", str2, "CodecSpecificDataUtil");
                    }
                }
                return null;
            case "hev1":
            case "hvc1":
                return c(str2, strArrSplit, c3136t.f27014E);
            case "iamf":
                if (strArrSplit.length < 4) {
                    U2.w("Ignoring malformed IAMF codec string: ", str2, "CodecSpecificDataUtil");
                } else {
                    try {
                        int i32 = 1 << (Integer.parseInt(strArrSplit[1]) + 16);
                        String str5 = strArrSplit[3];
                        str5.getClass();
                        str5.hashCode();
                        switch (str5) {
                            case "Opus":
                                i25 = 1;
                                return new Pair(Integer.valueOf(i32 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE | i25), 0);
                            case "fLaC":
                                i25 = 4;
                                return new Pair(Integer.valueOf(i32 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE | i25), 0);
                            case "ipcm":
                                return new Pair(Integer.valueOf(i32 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE | i25), 0);
                            case "mp4a":
                                i25 = 2;
                                return new Pair(Integer.valueOf(i32 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE | i25), 0);
                            default:
                                x.f("CodecSpecificDataUtil", "Ignoring unknown codec identifier for IAMF auxiliary profile: " + strArrSplit[3]);
                                break;
                        }
                    } catch (NumberFormatException e8) {
                        x.g("CodecSpecificDataUtil", "Ignoring malformed primary profile in IAMF codec string: " + strArrSplit[1], e8);
                    }
                }
                return null;
            case "mp4a":
                if (strArrSplit.length != 3) {
                    U2.w("Ignoring malformed MP4A codec string: ", str2, "CodecSpecificDataUtil");
                } else {
                    try {
                        if ("audio/mp4a-latm".equals(O.f(Integer.parseInt(strArrSplit[1], 16)))) {
                            int i33 = Integer.parseInt(strArrSplit[2]);
                            int i34 = 17;
                            if (i33 != 17) {
                                i34 = 20;
                                if (i33 != 20) {
                                    i34 = 23;
                                    if (i33 != 23) {
                                        i34 = 29;
                                        if (i33 != 29) {
                                            i34 = 39;
                                            if (i33 != 39) {
                                                i34 = 42;
                                                if (i33 != 42) {
                                                    switch (i33) {
                                                        case 1:
                                                            i20 = -1;
                                                            i34 = 1;
                                                            break;
                                                        case 2:
                                                            i20 = -1;
                                                            i34 = 2;
                                                            break;
                                                        case 3:
                                                            i20 = -1;
                                                            i34 = 3;
                                                            break;
                                                        case 4:
                                                            i20 = -1;
                                                            i34 = 4;
                                                            break;
                                                        case 5:
                                                            i20 = -1;
                                                            i34 = 5;
                                                            break;
                                                        case 6:
                                                            i20 = -1;
                                                            i34 = 6;
                                                            break;
                                                        default:
                                                            i20 = -1;
                                                            i34 = -1;
                                                            break;
                                                    }
                                                } else {
                                                    i20 = -1;
                                                }
                                            } else {
                                                i20 = -1;
                                            }
                                        } else {
                                            i20 = -1;
                                        }
                                    } else {
                                        i20 = -1;
                                    }
                                } else {
                                    i20 = -1;
                                }
                            } else {
                                i20 = -1;
                            }
                            if (i34 != i20) {
                                return new Pair(Integer.valueOf(i34), 0);
                            }
                        }
                    } catch (NumberFormatException unused4) {
                        U2.w("Ignoring malformed MP4A codec string: ", str2, "CodecSpecificDataUtil");
                    }
                }
                return null;
            case "s263":
                Pair pair = new Pair(1, 1);
                if (strArrSplit.length < 3) {
                    U2.w("Ignoring malformed H263 codec string: ", str2, "CodecSpecificDataUtil");
                    return pair;
                }
                try {
                    return new Pair(Integer.valueOf(Integer.parseInt(strArrSplit[1])), Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                } catch (NumberFormatException unused5) {
                    U2.w("Ignoring malformed H263 codec string: ", str2, "CodecSpecificDataUtil");
                    return pair;
                }
            case "vp09":
                if (strArrSplit.length < 3) {
                    U2.w("Ignoring malformed VP9 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int i35 = Integer.parseInt(strArrSplit[1]);
                    int i36 = Integer.parseInt(strArrSplit[2]);
                    if (i35 == 0) {
                        i21 = 1;
                    } else if (i35 == 1) {
                        i21 = 2;
                    } else if (i35 != 2) {
                        i21 = i35 != 3 ? -1 : 8;
                    } else {
                        i21 = 4;
                    }
                    if (i21 == -1) {
                        U2.v("Unknown VP9 profile: ", i35, "CodecSpecificDataUtil");
                    } else {
                        if (i36 == 10) {
                            i22 = -1;
                            i23 = 1;
                        } else if (i36 == 11) {
                            i22 = -1;
                            i23 = 2;
                        } else if (i36 == 20) {
                            i22 = -1;
                            i23 = 4;
                        } else if (i36 == 21) {
                            i22 = -1;
                            i23 = 8;
                        } else if (i36 == 30) {
                            i22 = -1;
                            i23 = 16;
                        } else if (i36 == 31) {
                            i22 = -1;
                            i23 = 32;
                        } else if (i36 == 40) {
                            i22 = -1;
                            i23 = 64;
                        } else if (i36 == 41) {
                            i22 = -1;
                            i23 = 128;
                        } else if (i36 == 50) {
                            i22 = -1;
                            i23 = 256;
                        } else if (i36 != 51) {
                            switch (i36) {
                                case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                                    i23 = 2048;
                                    i22 = -1;
                                    break;
                                case 61:
                                    i22 = -1;
                                    i23 = 4096;
                                    break;
                                case 62:
                                    i23 = 8192;
                                    i22 = -1;
                                    break;
                                default:
                                    i22 = -1;
                                    i23 = -1;
                                    break;
                            }
                        } else {
                            i22 = -1;
                            i23 = IMediaList.Event.ItemAdded;
                        }
                        if (i23 != i22) {
                            return new Pair(Integer.valueOf(i21), Integer.valueOf(i23));
                        }
                        U2.v("Unknown VP9 level: ", i36, "CodecSpecificDataUtil");
                    }
                } catch (NumberFormatException unused6) {
                    U2.w("Ignoring malformed VP9 codec string: ", str2, "CodecSpecificDataUtil");
                }
                return null;
            default:
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Pair c(String str, String[] strArr, C3126i c3126i) {
        Integer numValueOf;
        if (strArr.length < 4) {
            U2.w("Ignoring malformed HEVC codec string: ", str, "CodecSpecificDataUtil");
            return null;
        }
        Matcher matcher = f28083c.matcher(strArr[1]);
        if (!matcher.matches()) {
            U2.w("Ignoring malformed HEVC codec string: ", str, "CodecSpecificDataUtil");
            return null;
        }
        String strGroup = matcher.group(1);
        int i8 = 6;
        if ("1".equals(strGroup)) {
            i8 = 1;
        } else if ("2".equals(strGroup)) {
            i8 = (c3126i == null || c3126i.f26874c != 6) ? 2 : 4096;
        } else if (!"6".equals(strGroup)) {
            U2.w("Unknown HEVC profile string: ", strGroup, "CodecSpecificDataUtil");
            return null;
        }
        String str2 = strArr[3];
        if (str2 != null) {
            str2.hashCode();
            byte b8 = -1;
            switch (str2.hashCode()) {
                case 70821:
                    if (str2.equals("H30")) {
                        b8 = 0;
                    }
                    break;
                case 70914:
                    if (str2.equals("H60")) {
                        b8 = 1;
                    }
                    break;
                case 70917:
                    if (str2.equals("H63")) {
                        b8 = 2;
                    }
                    break;
                case 71007:
                    if (str2.equals("H90")) {
                        b8 = 3;
                    }
                    break;
                case 71010:
                    if (str2.equals("H93")) {
                        b8 = 4;
                    }
                    break;
                case 74665:
                    if (str2.equals("L30")) {
                        b8 = 5;
                    }
                    break;
                case 74758:
                    if (str2.equals("L60")) {
                        b8 = 6;
                    }
                    break;
                case 74761:
                    if (str2.equals("L63")) {
                        b8 = 7;
                    }
                    break;
                case 74851:
                    if (str2.equals("L90")) {
                        b8 = 8;
                    }
                    break;
                case 74854:
                    if (str2.equals("L93")) {
                        b8 = 9;
                    }
                    break;
                case 2193639:
                    if (str2.equals("H120")) {
                        b8 = 10;
                    }
                    break;
                case 2193642:
                    if (str2.equals("H123")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                    }
                    break;
                case 2193732:
                    if (str2.equals("H150")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                    }
                    break;
                case 2193735:
                    if (str2.equals("H153")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                    }
                    break;
                case 2193738:
                    if (str2.equals("H156")) {
                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                    }
                    break;
                case 2193825:
                    if (str2.equals("H180")) {
                        b8 = 15;
                    }
                    break;
                case 2193828:
                    if (str2.equals("H183")) {
                        b8 = 16;
                    }
                    break;
                case 2193831:
                    if (str2.equals("H186")) {
                        b8 = 17;
                    }
                    break;
                case 2312803:
                    if (str2.equals("L120")) {
                        b8 = 18;
                    }
                    break;
                case 2312806:
                    if (str2.equals("L123")) {
                        b8 = 19;
                    }
                    break;
                case 2312896:
                    if (str2.equals("L150")) {
                        b8 = 20;
                    }
                    break;
                case 2312899:
                    if (str2.equals("L153")) {
                        b8 = 21;
                    }
                    break;
                case 2312902:
                    if (str2.equals("L156")) {
                        b8 = 22;
                    }
                    break;
                case 2312989:
                    if (str2.equals("L180")) {
                        b8 = 23;
                    }
                    break;
                case 2312992:
                    if (str2.equals("L183")) {
                        b8 = 24;
                    }
                    break;
                case 2312995:
                    if (str2.equals("L186")) {
                        b8 = 25;
                    }
                    break;
            }
            switch (b8) {
                case 0:
                    numValueOf = 2;
                    break;
                case 1:
                    numValueOf = 8;
                    break;
                case 2:
                    numValueOf = 32;
                    break;
                case 3:
                    numValueOf = 128;
                    break;
                case 4:
                    numValueOf = Integer.valueOf(IMediaList.Event.ItemAdded);
                    break;
                case 5:
                    numValueOf = 1;
                    break;
                case 6:
                    numValueOf = 4;
                    break;
                case 7:
                    numValueOf = 16;
                    break;
                case 8:
                    numValueOf = 64;
                    break;
                case 9:
                    numValueOf = 256;
                    break;
                case 10:
                    numValueOf = 2048;
                    break;
                case 11:
                    numValueOf = 8192;
                    break;
                case 12:
                    numValueOf = 32768;
                    break;
                case 13:
                    numValueOf = 131072;
                    break;
                case 14:
                    numValueOf = 524288;
                    break;
                case 15:
                    numValueOf = 2097152;
                    break;
                case 16:
                    numValueOf = 8388608;
                    break;
                case 17:
                    numValueOf = 33554432;
                    break;
                case 18:
                    numValueOf = 1024;
                    break;
                case 19:
                    numValueOf = 4096;
                    break;
                case 20:
                    numValueOf = Integer.valueOf(Http2.INITIAL_MAX_FRAME_SIZE);
                    break;
                case 21:
                    numValueOf = 65536;
                    break;
                case 22:
                    numValueOf = 262144;
                    break;
                case 23:
                    numValueOf = 1048576;
                    break;
                case 24:
                    numValueOf = 4194304;
                    break;
                case 25:
                    numValueOf = Integer.valueOf(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
                    break;
                default:
                    numValueOf = null;
                    break;
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return new Pair(Integer.valueOf(i8), numValueOf);
        }
        U2.w("Unknown HEVC level string: ", str2, "CodecSpecificDataUtil");
        return null;
    }
}
