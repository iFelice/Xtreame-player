package Y;

import com.google.android.gms.internal.ads.ME;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class r extends RuntimeException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7928G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r() {
        super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        this.f7928G = 2;
    }

    public static Object a(ME me) {
        try {
            return me.zza();
        } catch (Exception e8) {
            throw new r(5, (Throwable) e8);
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        switch (this.f7928G) {
            case 14:
                return "Chain of Causes for CompositeException In Order Received =>";
            default:
                return super.getMessage();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public r(int i8) {
        String str;
        this.f7928G = 6;
        if (i8 != 1) {
            str = i8 != 2 ? "Detaching surface timed out." : "Setting foreground mode timed out.";
        } else {
            str = "Player release timed out.";
        }
        super(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(int i8, int i9) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f7928G = i8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(int i8, Throwable th) {
        super(th);
        this.f7928G = i8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(String str, int i8) {
        super(str);
        this.f7928G = i8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(String str, int i8, Throwable th) {
        super(str, th);
        this.f7928G = i8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(GeneralSecurityException generalSecurityException) {
        super("Creating a LegacyProtoKey failed", generalSecurityException);
        this.f7928G = 11;
    }
}
