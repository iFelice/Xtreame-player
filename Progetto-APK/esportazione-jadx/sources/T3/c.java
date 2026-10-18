package T3;

import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {
    boolean getBooleanFlagValue(String str, boolean z7, int i8);

    int getIntFlagValue(String str, int i8, int i9);

    long getLongFlagValue(String str, long j8, int i8);

    String getStringFlagValue(String str, String str2, int i8);

    void init(R3.a aVar);
}
