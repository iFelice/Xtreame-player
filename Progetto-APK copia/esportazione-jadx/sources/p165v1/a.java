package p165v1;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.protobuf.U2;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p110o0.b;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.x;
import p126q1.d;
import p126q1.l;
import p126q1.m;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class a implements m {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f30549J = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Pattern f30550K = Pattern.compile("\\{\\\\.*?\\}");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final StringBuilder f30551G = new StringBuilder();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f30552H = new ArrayList();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final E f30553I = new E();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    /* JADX WARN: Code duplicated, block: B:76:0x00fa  */
    public static b d(Spanned spanned, String str) {
        byte b8;
        int i8;
        byte b9;
        int i9;
        float f8;
        float f9;
        if (str == null) {
            return new b(spanned, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
        }
        switch (str) {
            case "{\an1}":
                b8 = 0;
                break;
            case "{\an2}":
                b8 = 6;
                break;
            case "{\an3}":
                b8 = 3;
                break;
            case "{\an4}":
                b8 = 1;
                break;
            case "{\an5}":
                b8 = 7;
                break;
            case "{\an6}":
                b8 = 4;
                break;
            case "{\an7}":
                b8 = 2;
                break;
            case "{\an8}":
                b8 = 8;
                break;
            case "{\an9}":
                b8 = 5;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0 || b8 == 1 || b8 == 2) {
            i8 = 0;
        } else {
            i8 = (b8 == 3 || b8 == 4 || b8 == 5) ? 2 : 1;
        }
        switch (str) {
            case "{\an1}":
                b9 = 0;
                break;
            case "{\an2}":
                b9 = 1;
                break;
            case "{\an3}":
                b9 = 2;
                break;
            case "{\an4}":
                b9 = 6;
                break;
            case "{\an5}":
                b9 = 7;
                break;
            case "{\an6}":
                b9 = 8;
                break;
            case "{\an7}":
                b9 = 3;
                break;
            case "{\an8}":
                b9 = 4;
                break;
            case "{\an9}":
                b9 = 5;
                break;
            default:
                b9 = -1;
                break;
        }
        if (b9 == 0 || b9 == 1 || b9 == 2) {
            i9 = 2;
        } else {
            i9 = (b9 == 3 || b9 == 4 || b9 == 5) ? 0 : 1;
        }
        if (i8 == 0) {
            f8 = 0.08f;
        } else if (i8 == 1) {
            f8 = 0.5f;
        } else {
            if (i8 != 2) {
                throw new IllegalArgumentException();
            }
            f8 = 0.92f;
        }
        if (i9 == 0) {
            f9 = 0.08f;
        } else if (i9 == 1) {
            f9 = 0.5f;
        } else {
            if (i9 != 2) {
                throw new IllegalArgumentException();
            }
            f9 = 0.92f;
        }
        return new b(spanned, null, null, null, f9, 0, i9, f8, i8, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
    }

    public static long e(Matcher matcher, int i8) {
        String strGroup = matcher.group(i8 + 1);
        long j8 = strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L;
        String strGroup2 = matcher.group(i8 + 2);
        strGroup2.getClass();
        long j9 = (Long.parseLong(strGroup2) * 60000) + j8;
        String strGroup3 = matcher.group(i8 + 3);
        strGroup3.getClass();
        long j10 = (Long.parseLong(strGroup3) * 1000) + j9;
        String strGroup4 = matcher.group(i8 + 4);
        if (strGroup4 != null) {
            j10 += Long.parseLong(strGroup4);
        }
        return j10 * 1000;
    }

    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        long j8;
        String str;
        String str2;
        InterfaceC3172j interfaceC3172j2;
        this = this;
        InterfaceC3172j interfaceC3172j3 = interfaceC3172j;
        String str3 = "SubripParser";
        E e8 = this.f30553I;
        e8.J(i8 + i9, bArr);
        e8.L(i8);
        Charset charsetH = e8.H();
        if (charsetH == null) {
            charsetH = StandardCharsets.UTF_8;
        }
        long j9 = lVar.f29557a;
        long j10 = -9223372036854775807L;
        ArrayList arrayList = (j9 == -9223372036854775807L || !lVar.f29558b) ? null : new ArrayList();
        while (true) {
            String strM = e8.m(charsetH);
            if (strM == null) {
                break;
            }
            if (!strM.isEmpty()) {
                try {
                    Integer.parseInt(strM);
                    String strM2 = e8.m(charsetH);
                    if (strM2 == null) {
                        x.f(str3, "Unexpected end");
                        break;
                    }
                    Matcher matcher = f30549J.matcher(strM2);
                    if (matcher.matches()) {
                        long jE = e(matcher, 1);
                        long jE2 = e(matcher, 6);
                        StringBuilder sb = this.f30551G;
                        sb.setLength(0);
                        ArrayList arrayList2 = this.f30552H;
                        arrayList2.clear();
                        String strM3 = e8.m(charsetH);
                        while (!TextUtils.isEmpty(strM3)) {
                            if (sb.length() > 0) {
                                sb.append("<br>");
                            }
                            String strTrim = strM3.trim();
                            StringBuilder sb2 = new StringBuilder(strTrim);
                            Matcher matcher2 = f30550K.matcher(strTrim);
                            int i10 = 0;
                            while (matcher2.find()) {
                                String strGroup = matcher2.group();
                                arrayList2.add(strGroup);
                                Matcher matcher3 = matcher2;
                                int iStart = matcher2.start() - i10;
                                int length = strGroup.length();
                                sb2.replace(iStart, iStart + length, HttpUrl.FRAGMENT_ENCODE_SET);
                                i10 += length;
                                matcher2 = matcher3;
                                str3 = str3;
                            }
                            sb.append(sb2.toString());
                            strM3 = e8.m(charsetH);
                            str3 = str3;
                        }
                        String str4 = str3;
                        Spanned spannedFromHtml = Html.fromHtml(sb.toString());
                        int i11 = 0;
                        while (true) {
                            if (i11 >= arrayList2.size()) {
                                str2 = null;
                                break;
                            }
                            str2 = (String) arrayList2.get(i11);
                            if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            } else {
                                i11++;
                            }
                        }
                        if (j9 == -9223372036854775807L || jE2 >= j9) {
                            p126q1.a aVar = new p126q1.a(H.x(d(spannedFromHtml, str2)), jE, jE2 - jE);
                            interfaceC3172j2 = interfaceC3172j;
                            interfaceC3172j2.accept(aVar);
                        } else {
                            if (arrayList != null) {
                                arrayList.add(new p126q1.a(H.x(d(spannedFromHtml, str2)), jE, jE2 - jE));
                            }
                            interfaceC3172j2 = interfaceC3172j;
                        }
                        interfaceC3172j3 = interfaceC3172j2;
                        j10 = -9223372036854775807L;
                        str3 = str4;
                        this = this;
                    } else {
                        String str5 = str3;
                        long j11 = j10;
                        str = str5;
                        x.f(str, "Skipping invalid timing: ".concat(strM2));
                        interfaceC3172j3 = interfaceC3172j3;
                        j8 = j11;
                        str3 = str;
                        j10 = j8;
                    }
                } catch (NumberFormatException unused) {
                    j8 = j10;
                    str = str3;
                    x.f(str, "Skipping invalid index: ".concat(strM));
                    interfaceC3172j3 = interfaceC3172j3;
                }
            }
        }
        InterfaceC3172j interfaceC3172j4 = interfaceC3172j3;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                interfaceC3172j4.accept((p126q1.a) it.next());
            }
        }
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    @Override // p126q1.m
    public final int g() {
        return 1;
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }
}
