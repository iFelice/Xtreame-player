package T2;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6591a;

    public m(long j8) {
        this.f6591a = j8;
    }

    public static m a(BufferedReader bufferedReader) throws IOException {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        m mVar = new m(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return mVar;
                    }
                    m mVar2 = new m(jsonReader.nextLong());
                    jsonReader.close();
                    return mVar2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f6591a == ((m) obj).f6591a;
        }
        return false;
    }

    public final int hashCode() {
        long j8 = this.f6591a;
        return 1000003 ^ ((int) ((j8 >>> 32) ^ j8));
    }

    public final String toString() {
        return p000a.r.i(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f6591a, "}");
    }
}
