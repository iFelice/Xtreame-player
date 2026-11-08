package com.google.android.gms.internal.ads;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1494j2 implements W1 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f19419J = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Pattern f19420K = Pattern.compile("\\{\\\\.*?\\}");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final StringBuilder f19421G = new StringBuilder();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f19422H = new ArrayList();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1534jr f19423I = new C1534jr();

    public static long a(Matcher matcher, int i8) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:40:0x010c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0156  */
    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        String str;
        int i10;
        int i11;
        float f8;
        float f9;
        C1063ak c1063ak;
        C1494j2 c1494j2 = this;
        C1534jr c1534jr = c1494j2.f19423I;
        c1534jr.h(i8 + i9, bArr);
        c1534jr.j(i8);
        Charset charsetC = c1534jr.c();
        if (charsetC == null) {
            charsetC = AbstractC2113uz.f21413c;
        }
        while (true) {
            String strI = c1534jr.I(charsetC);
            if (strI == null) {
                return;
            }
            if (strI.length() != 0) {
                try {
                    Integer.parseInt(strI);
                    String strI2 = c1534jr.I(charsetC);
                    if (strI2 == null) {
                        Zo.f("SubripParser", "Unexpected end");
                        return;
                    }
                    Matcher matcher = f19419J.matcher(strI2);
                    if (matcher.matches()) {
                        long jA = a(matcher, 1);
                        long jA2 = a(matcher, 6);
                        StringBuilder sb = c1494j2.f19421G;
                        sb.setLength(0);
                        ArrayList arrayList = c1494j2.f19422H;
                        arrayList.clear();
                        for (String strI3 = c1534jr.I(charsetC); !TextUtils.isEmpty(strI3); strI3 = c1534jr.I(charsetC)) {
                            if (sb.length() > 0) {
                                sb.append("<br>");
                            }
                            String strTrim = strI3.trim();
                            StringBuilder sb2 = new StringBuilder(strTrim);
                            Matcher matcher2 = f19420K.matcher(strTrim);
                            int i12 = 0;
                            while (matcher2.find()) {
                                String strGroup = matcher2.group();
                                arrayList.add(strGroup);
                                int iStart = matcher2.start() - i12;
                                int length = strGroup.length();
                                sb2.replace(iStart, iStart + length, HttpUrl.FRAGMENT_ENCODE_SET);
                                i12 += length;
                            }
                            sb.append(sb2.toString());
                        }
                        Spanned spannedFromHtml = Html.fromHtml(sb.toString());
                        int i13 = 0;
                        while (true) {
                            if (i13 < arrayList.size()) {
                                str = (String) arrayList.get(i13);
                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                    i13++;
                                }
                            } else {
                                str = null;
                            }
                        }
                        if (str == null) {
                            c1063ak = new C1063ak(spannedFromHtml, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, 0.0f);
                        } else {
                            switch (str) {
                                case "{\an1}":
                                case "{\an4}":
                                case "{\an7}":
                                    i10 = 0;
                                    break;
                                case "{\an3}":
                                case "{\an6}":
                                case "{\an9}":
                                    i10 = 2;
                                    break;
                                default:
                                    i10 = 1;
                                    break;
                            }
                            switch (str) {
                                case "{\an1}":
                                case "{\an2}":
                                case "{\an3}":
                                    i11 = 2;
                                    break;
                                case "{\an7}":
                                case "{\an8}":
                                case "{\an9}":
                                    i11 = 0;
                                    break;
                                default:
                                    i11 = 1;
                                    break;
                            }
                            if (i10 == 0) {
                                f8 = 0.08f;
                            } else if (i10 == 1) {
                                f8 = 0.5f;
                            } else {
                                if (i10 != 2) {
                                    throw new IllegalArgumentException();
                                }
                                f8 = 0.92f;
                            }
                            if (i11 == 0) {
                                f9 = 0.08f;
                            } else if (i11 == 1) {
                                f9 = 0.5f;
                            } else {
                                if (i11 != 2) {
                                    throw new IllegalArgumentException();
                                }
                                f9 = 0.92f;
                            }
                            c1063ak = new C1063ak(spannedFromHtml, null, null, null, f9, 0, i11, f8, i10, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, 0.0f);
                        }
                        dVar.mo4zza(new S1(AbstractC2073uA.w(c1063ak), jA, jA2 - jA));
                    } else {
                        Zo.f("SubripParser", "Skipping invalid timing: ".concat(strI2));
                    }
                } catch (NumberFormatException unused) {
                    Zo.f("SubripParser", "Skipping invalid index: ".concat(strI));
                }
            }
            c1494j2 = this;
        }
    }
}
