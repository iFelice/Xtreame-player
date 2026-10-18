package Z3;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.U2;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.xmlpull.v1.XmlPullParser;
import p086l.p1;
import p086l.r1;
import p094m0.C3135s;

/* JADX INFO: loaded from: classes.dex */
public abstract class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Boolean f8256a;

    public static void a(SpannableStringBuilder spannableStringBuilder, Object obj, int i8, int i9) {
        for (Object obj2 : spannableStringBuilder.getSpans(i8, i9, obj.getClass())) {
            if (spannableStringBuilder.getSpanStart(obj2) == i8 && spannableStringBuilder.getSpanEnd(obj2) == i9 && spannableStringBuilder.getSpanFlags(obj2) == 33) {
                spannableStringBuilder.removeSpan(obj2);
            }
        }
        spannableStringBuilder.setSpan(obj, i8, i9, 33);
    }

    public static boolean b(float[] fArr) {
        float f8 = fArr[0];
        float f9 = fArr[1];
        return f8 == f9 && f9 == fArr[2];
    }

    public static ArrayList c(byte[] bArr) {
        long j8 = (((long) (((bArr[11] & 255) << 8) | (bArr[10] & 255))) * 1000000000) / 48000;
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j8).array());
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(80000000L).array());
        return arrayList;
    }

    public static p125q0.a d(p094m0.N n7, String str) {
        int i8 = 0;
        while (true) {
            p094m0.M[] mArr = n7.f26777a;
            if (i8 >= mArr.length) {
                return null;
            }
            p094m0.M m7 = mArr[i8];
            if (m7 instanceof p125q0.a) {
                p125q0.a aVar = (p125q0.a) m7;
                if (aVar.f29438a.equals(str)) {
                    return aVar;
                }
            }
            i8++;
        }
    }

    public static int e(Context context, int i8, int i9) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i8, typedValue, true);
        return typedValue.resourceId != 0 ? i8 : i9;
    }

    public static F.d f(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i8) {
        F.d dVarC;
        boolean zJ = j(xmlPullParser, str);
        Object obj = null;
        int i9 = 0;
        if (zJ) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i8, typedValue);
            int i10 = typedValue.type;
            if (i10 >= 28 && i10 <= 31) {
                return new F.d(obj, obj, typedValue.data, i9);
            }
            try {
                dVarC = F.d.c(typedArray.getResourceId(i8, 0), theme, typedArray.getResources());
            } catch (Exception e8) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e8);
                dVarC = null;
            }
            if (dVarC != null) {
                return dVarC;
            }
        }
        return new F.d(obj, obj, i9, i9);
    }

    public static String g(TypedArray typedArray, XmlResourceParser xmlResourceParser, String str, int i8) {
        if (j(xmlResourceParser, str)) {
            return typedArray.getString(i8);
        }
        return null;
    }

    public static long h(byte b8, byte b9) {
        int i8;
        int i9;
        int i10 = b8 & 255;
        int i11 = b8 & 3;
        if (i11 != 0) {
            i8 = 2;
            if (i11 != 1 && i11 != 2) {
                i8 = b9 & 63;
            }
        } else {
            i8 = 1;
        }
        int i12 = i10 >> 3;
        int i13 = i12 & 3;
        if (i12 >= 16) {
            i9 = 2500 << i13;
        } else if (i12 >= 12) {
            i9 = 10000 << (i12 & 1);
        } else {
            i9 = i13 == 3 ? 60000 : 10000 << i13;
        }
        return ((long) i8) * ((long) i9);
    }

    public static String i(TypedArray typedArray, int i8, int i9) {
        String string = typedArray.getString(i8);
        return string == null ? typedArray.getString(i9) : string;
    }

    public static boolean j(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x003c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int k(String str) {
        byte b8;
        if (str == null) {
            return -1;
        }
        String strP = p094m0.O.p(str);
        strP.getClass();
        switch (strP.hashCode()) {
            case -2123537834:
                if (!strP.equals("audio/eac3-joc")) {
                    b8 = -1;
                } else {
                    b8 = 0;
                }
                break;
            case -1662384011:
                if (!strP.equals("video/mp2p")) {
                    b8 = -1;
                } else {
                    b8 = 1;
                }
                break;
            case -1662384007:
                if (!strP.equals("video/mp2t")) {
                    b8 = -1;
                } else {
                    b8 = 2;
                }
                break;
            case -1662095187:
                if (!strP.equals("video/webm")) {
                    b8 = -1;
                } else {
                    b8 = 3;
                }
                break;
            case -1606874997:
                if (!strP.equals("audio/amr-wb")) {
                    b8 = -1;
                } else {
                    b8 = 4;
                }
                break;
            case -1487656890:
                if (!strP.equals("image/avif")) {
                    b8 = -1;
                } else {
                    b8 = 5;
                }
                break;
            case -1487464693:
                if (!strP.equals("image/heic")) {
                    b8 = -1;
                } else {
                    b8 = 6;
                }
                break;
            case -1487464690:
                if (!strP.equals("image/heif")) {
                    b8 = -1;
                } else {
                    b8 = 7;
                }
                break;
            case -1487394660:
                if (!strP.equals("image/jpeg")) {
                    b8 = -1;
                } else {
                    b8 = 8;
                }
                break;
            case -1487018032:
                if (!strP.equals("image/webp")) {
                    b8 = -1;
                } else {
                    b8 = 9;
                }
                break;
            case -1248337486:
                if (!strP.equals("application/mp4")) {
                    b8 = -1;
                } else {
                    b8 = 10;
                }
                break;
            case -1079884372:
                if (!strP.equals("video/x-msvideo")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
            case -1004728940:
                if (!strP.equals("text/vtt")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                }
                break;
            case -879272239:
                if (!strP.equals("image/bmp")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                }
                break;
            case -879258763:
                if (!strP.equals("image/png")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                }
                break;
            case -387023398:
                if (!strP.equals("audio/x-matroska")) {
                    b8 = -1;
                } else {
                    b8 = 15;
                }
                break;
            case -43467528:
                if (!strP.equals("application/webm")) {
                    b8 = -1;
                } else {
                    b8 = 16;
                }
                break;
            case 13915911:
                if (!strP.equals("video/x-flv")) {
                    b8 = -1;
                } else {
                    b8 = 17;
                }
                break;
            case 187078296:
                if (!strP.equals("audio/ac3")) {
                    b8 = -1;
                } else {
                    b8 = 18;
                }
                break;
            case 187078297:
                if (!strP.equals("audio/ac4")) {
                    b8 = -1;
                } else {
                    b8 = 19;
                }
                break;
            case 187078669:
                if (!strP.equals("audio/amr")) {
                    b8 = -1;
                } else {
                    b8 = 20;
                }
                break;
            case 187090232:
                if (!strP.equals("audio/mp4")) {
                    b8 = -1;
                } else {
                    b8 = 21;
                }
                break;
            case 187091926:
                if (!strP.equals("audio/ogg")) {
                    b8 = -1;
                } else {
                    b8 = 22;
                }
                break;
            case 187099443:
                if (!strP.equals("audio/wav")) {
                    b8 = -1;
                } else {
                    b8 = 23;
                }
                break;
            case 1331848029:
                if (!strP.equals("video/mp4")) {
                    b8 = -1;
                } else {
                    b8 = 24;
                }
                break;
            case 1503095341:
                if (!strP.equals("audio/3gpp")) {
                    b8 = -1;
                } else {
                    b8 = 25;
                }
                break;
            case 1504578661:
                if (!strP.equals("audio/eac3")) {
                    b8 = -1;
                } else {
                    b8 = 26;
                }
                break;
            case 1504619009:
                if (!strP.equals("audio/flac")) {
                    b8 = -1;
                } else {
                    b8 = 27;
                }
                break;
            case 1504824762:
                if (!strP.equals("audio/midi")) {
                    b8 = -1;
                } else {
                    b8 = 28;
                }
                break;
            case 1504831518:
                if (!strP.equals("audio/mpeg")) {
                    b8 = -1;
                } else {
                    b8 = 29;
                }
                break;
            case 1505118770:
                if (!strP.equals("audio/webm")) {
                    b8 = -1;
                } else {
                    b8 = 30;
                }
                break;
            case 2039520277:
                if (!strP.equals("video/x-matroska")) {
                    b8 = -1;
                } else {
                    b8 = 31;
                }
                break;
            default:
                b8 = -1;
                break;
        }
        switch (b8) {
            case 0:
            case 18:
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case 15:
            case 16:
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                return 6;
            case 4:
            case 20:
            case 25:
                return 3;
            case 5:
                return 21;
            case 6:
            case 7:
                return 20;
            case 8:
                return 14;
            case 9:
                return 18;
            case 10:
            case 21:
            case 24:
                return 8;
            case 11:
                return 16;
            case 12:
                return 13;
            case 13:
                return 19;
            case 14:
                return 17;
            case 17:
                return 5;
            case 19:
                return 1;
            case 22:
                return 9;
            case 23:
                return 12;
            case 27:
                return 4;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return 15;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                return 7;
            default:
                return -1;
        }
    }

    public static int l(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            return 0;
        }
        if (lastPathSegment.endsWith(".ac4")) {
            return 1;
        }
        if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
            return 2;
        }
        if (lastPathSegment.endsWith(".amr")) {
            return 3;
        }
        if (lastPathSegment.endsWith(".flac")) {
            return 4;
        }
        if (lastPathSegment.endsWith(".flv")) {
            return 5;
        }
        if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
            return 15;
        }
        if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
            return 6;
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
            return 9;
        }
        if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
            return 12;
        }
        if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
            return 13;
        }
        if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
            return 14;
        }
        if (lastPathSegment.endsWith(".avi")) {
            return 16;
        }
        if (lastPathSegment.endsWith(".png")) {
            return 17;
        }
        if (lastPathSegment.endsWith(".webp")) {
            return 18;
        }
        if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
            return 19;
        }
        if (lastPathSegment.endsWith(".heic") || lastPathSegment.endsWith(".heif")) {
            return 20;
        }
        return lastPathSegment.endsWith(".avif") ? 21 : -1;
    }

    public static boolean m(MotionEvent motionEvent, int i8) {
        return (motionEvent.getSource() & i8) == i8;
    }

    public static TypedArray n(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static p065i1.e o(int i8, p117p0.E e8) {
        int iL = e8.l();
        if (e8.l() == 1684108385) {
            e8.M(8);
            String strV = e8.v(iL - 16);
            return new p065i1.e("und", strV, strV);
        }
        p117p0.x.f("MetadataUtil", "Failed to parse comment attribute: " + p125q0.e.a(i8));
        return null;
    }

    public static p065i1.a p(p117p0.E e8) {
        String str;
        int iL = e8.l();
        if (e8.l() != 1684108385) {
            p117p0.x.f("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iL2 = e8.l();
        byte[] bArr = p111o1.e.f27689a;
        int i8 = iL2 & 16777215;
        if (i8 == 13) {
            str = "image/jpeg";
        } else {
            str = i8 == 14 ? "image/png" : null;
        }
        if (str == null) {
            U2.v("Unrecognized cover art flags: ", i8, "MetadataUtil");
            return null;
        }
        e8.M(4);
        int i9 = iL - 16;
        byte[] bArr2 = new byte[i9];
        e8.j(0, bArr2, i9);
        return new p065i1.a(str, null, 3, bArr2);
    }

    public static p065i1.o q(int i8, p117p0.E e8, String str) {
        int iL = e8.l();
        if (e8.l() == 1684108385 && iL >= 22) {
            e8.M(10);
            int iF = e8.F();
            if (iF > 0) {
                String strF = p000a.r.f(HttpUrl.FRAGMENT_ENCODE_SET, iF);
                int iF2 = e8.F();
                if (iF2 > 0) {
                    strF = strF + MqttTopic.TOPIC_LEVEL_SEPARATOR + iF2;
                }
                return new p065i1.o(str, null, z4.H.x(strF));
            }
        }
        p117p0.x.f("MetadataUtil", "Failed to parse index/count attribute: " + p125q0.e.a(i8));
        return null;
    }

    public static int r(p117p0.E e8) {
        int iL = e8.l();
        if (e8.l() == 1684108385) {
            e8.M(8);
            int i8 = iL - 16;
            if (i8 == 1) {
                return e8.z();
            }
            if (i8 == 2) {
                return e8.F();
            }
            if (i8 == 3) {
                return e8.C();
            }
            if (i8 == 4 && (e8.f28035a[e8.f28036b] & 128) == 0) {
                return e8.D();
            }
        }
        p117p0.x.f("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static p065i1.j s(int i8, String str, p117p0.E e8, boolean z7, boolean z8) {
        int iR = r(e8);
        if (z8) {
            iR = Math.min(1, iR);
        }
        if (iR >= 0) {
            return z7 ? new p065i1.o(str, null, z4.H.x(Integer.toString(iR))) : new p065i1.e("und", str, Integer.toString(iR));
        }
        p117p0.x.f("MetadataUtil", "Failed to parse uint8 attribute: " + p125q0.e.a(i8));
        return null;
    }

    public static p065i1.o t(int i8, p117p0.E e8, String str) {
        int iL = e8.l();
        if (e8.l() == 1684108385) {
            e8.M(8);
            return new p065i1.o(str, null, z4.H.x(e8.v(iL - 16)));
        }
        p117p0.x.f("MetadataUtil", "Failed to parse text attribute: " + p125q0.e.a(i8));
        return null;
    }

    public static void u(int i8, p094m0.N n7, C3135s c3135s, p094m0.N n8, p094m0.N... nArr) {
        if (n8 == null) {
            n8 = new p094m0.N(new p094m0.M[0]);
        }
        if (n7 != null) {
            int i9 = 0;
            while (true) {
                p094m0.M[] mArr = n7.f26777a;
                if (i9 >= mArr.length) {
                    break;
                }
                p094m0.M m7 = mArr[i9];
                if (m7 instanceof p125q0.a) {
                    p125q0.a aVar = (p125q0.a) m7;
                    if (!aVar.f29438a.equals("com.android.capture.fps")) {
                        n8 = n8.a(aVar);
                    } else if (i8 == 2) {
                        n8 = n8.a(aVar);
                    }
                }
                i9++;
            }
        }
        for (p094m0.N n9 : nArr) {
            n8 = n8.b(n9);
        }
        if (n8.f26777a.length > 0) {
            c3135s.f26993k = n8;
        }
    }

    public static void v(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            p1.a(view, charSequence);
            return;
        }
        r1 r1Var = r1.f26356Q;
        if (r1Var != null && r1Var.f26358G == view) {
            r1.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new r1(view, charSequence);
            return;
        }
        r1 r1Var2 = r1.f26357R;
        if (r1Var2 != null && r1Var2.f26358G == view) {
            r1Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }
}
