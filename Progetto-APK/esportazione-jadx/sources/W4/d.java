package W4;

import com.google.firebase.inappmessaging.model.MessageType;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f7489a;

    static {
        int[] iArr = new int[MessageType.values().length];
        f7489a = iArr;
        try {
            iArr[MessageType.BANNER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f7489a[MessageType.MODAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f7489a[MessageType.IMAGE_ONLY.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f7489a[MessageType.CARD.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
