package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Pv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f15501c;

    public Pv(boolean z7, int i8, int i9) {
        this.f15499a = i8;
        this.f15500b = i9;
        this.f15501c = z7;
    }

    public static ArrayList a(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int iNextInt = 0;
            int iNextInt2 = 0;
            boolean zNextBoolean = false;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                if ("width".equals(strNextName)) {
                    iNextInt = jsonReader.nextInt();
                } else if ("height".equals(strNextName)) {
                    iNextInt2 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(strNextName)) {
                    zNextBoolean = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new Pv(zNextBoolean, iNextInt, iNextInt2));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
