package S2;

import U2.k;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a implements k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f6396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Set f6397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f6398e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6399f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6401b;

    static {
        String strP = com.bumptech.glide.c.p("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f6396c = strP;
        String strP2 = com.bumptech.glide.c.p("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String strP3 = com.bumptech.glide.c.p("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f6397d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new R2.b("proto"), new R2.b("json"))));
        f6398e = new a(strP, null);
        f6399f = new a(strP2, strP3);
    }

    public a(String str, String str2) {
        this.f6400a = str;
        this.f6401b = str2;
    }

    public static a a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }
}
