package D2;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class c extends b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, int i8) {
        super(context, ParcelFileDescriptor.class);
        if (i8 != 1) {
        } else {
            super(context, InputStream.class);
        }
    }
}
