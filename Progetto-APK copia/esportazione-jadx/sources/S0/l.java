package S0;

import java.io.IOException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class l extends IOException {
    public l(Throwable th) {
        String str;
        StringBuilder sb = new StringBuilder("Unexpected ");
        sb.append(th.getClass().getSimpleName());
        if (th.getMessage() != null) {
            str = ": " + th.getMessage();
        } else {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        sb.append(str);
        super(sb.toString(), th);
    }
}
