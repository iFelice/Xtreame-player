package E1;

import android.media.MediaRoute2Info;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class G {
    public static void a(MediaRoute2Info.Builder builder, C0173h c0173h) {
        if (c0173h.f2745a.getBoolean("isVisibilityPublic", true)) {
            builder.setVisibilityPublic();
        } else {
            builder.setVisibilityRestricted(c0173h.a());
        }
    }

    public static Set<String> b(MediaRoute2Info mediaRoute2Info) {
        return mediaRoute2Info.getDeduplicationIds();
    }

    public static int c(MediaRoute2Info mediaRoute2Info) {
        return mediaRoute2Info.getType();
    }

    public static void d(MediaRoute2Info.Builder builder, Set<String> set) {
        builder.setDeduplicationIds(set);
    }

    public static void e(MediaRoute2Info.Builder builder, int i8) {
        builder.setType(i8);
    }
}
