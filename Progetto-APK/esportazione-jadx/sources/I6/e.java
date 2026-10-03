package I6;

import java.io.Serializable;
import java.util.regex.Pattern;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Pattern f4039G;

    public e(String str) {
        Pattern patternCompile = Pattern.compile(str);
        q0.g(patternCompile, "compile(...)");
        this.f4039G = patternCompile;
    }

    public final String toString() {
        String string = this.f4039G.toString();
        q0.g(string, "toString(...)");
        return string;
    }
}
