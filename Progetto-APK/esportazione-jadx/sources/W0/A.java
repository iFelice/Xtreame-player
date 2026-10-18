package W0;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class A {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f7302c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7303a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7304b = -1;

    public final boolean a(String str) {
        Matcher matcher = f7302c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            String str2 = p117p0.M.f28050a;
            int i8 = Integer.parseInt(strGroup, 16);
            int i9 = Integer.parseInt(matcher.group(2), 16);
            if (i8 <= 0 && i9 <= 0) {
                return false;
            }
            this.f7303a = i8;
            this.f7304b = i9;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final void b(p094m0.N n7) {
        int i8 = 0;
        while (true) {
            p094m0.M[] mArr = n7.f26777a;
            if (i8 >= mArr.length) {
                return;
            }
            p094m0.M m7 = mArr[i8];
            if (m7 instanceof p065i1.e) {
                p065i1.e eVar = (p065i1.e) m7;
                if ("iTunSMPB".equals(eVar.f25526c) && a(eVar.f25527d)) {
                    return;
                }
            } else if (m7 instanceof p065i1.l) {
                p065i1.l lVar = (p065i1.l) m7;
                if ("com.apple.iTunes".equals(lVar.f25539b) && "iTunSMPB".equals(lVar.f25540c) && a(lVar.f25541d)) {
                    return;
                }
            } else {
                continue;
            }
            i8++;
        }
    }
}
