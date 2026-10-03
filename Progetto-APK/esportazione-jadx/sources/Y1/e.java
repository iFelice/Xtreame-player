package Y1;

import android.animation.TypeEvaluator;

/* JADX INFO: loaded from: classes.dex */
public final class e implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f8066a = new e();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f8, Object obj, Object obj2) {
        int iIntValue = ((Integer) obj).intValue();
        float f9 = ((iIntValue >> 24) & 255) / 255.0f;
        int iIntValue2 = ((Integer) obj2).intValue();
        float f10 = ((iIntValue2 >> 24) & 255) / 255.0f;
        float fPow = (float) Math.pow(((iIntValue >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((iIntValue >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((iIntValue & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((iIntValue2 >> 16) & 255) / 255.0f, 2.2d);
        float fPow5 = ((((float) Math.pow(((iIntValue2 >> 8) & 255) / 255.0f, 2.2d)) - fPow2) * f8) + fPow2;
        float fPow6 = ((((float) Math.pow((iIntValue2 & 255) / 255.0f, 2.2d)) - fPow3) * f8) + fPow3;
        float f11 = (((f10 - f9) * f8) + f9) * 255.0f;
        return Integer.valueOf((Math.round(((float) Math.pow(((fPow4 - fPow) * f8) + fPow, 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(f11) << 24) | (Math.round(((float) Math.pow(fPow5, 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(fPow6, 0.45454545454545453d)) * 255.0f));
    }
}
