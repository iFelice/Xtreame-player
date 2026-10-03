package p193z;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p163v.a;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final SparseIntArray f31653j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31654a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f31657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f31658e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f31659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f31660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f31661h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f31662i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f31653j = sparseIntArray;
        sparseIntArray.append(3, 1);
        sparseIntArray.append(5, 2);
        sparseIntArray.append(9, 3);
        sparseIntArray.append(2, 4);
        sparseIntArray.append(1, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(4, 7);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(7, 9);
        sparseIntArray.append(6, 10);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r.f31692f);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            switch (f31653j.get(index)) {
                case 1:
                    this.f31658e = typedArrayObtainStyledAttributes.getFloat(index, this.f31658e);
                    break;
                case 2:
                    this.f31656c = typedArrayObtainStyledAttributes.getInt(index, this.f31656c);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        String str = a.f30545a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                    }
                    break;
                case 4:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f31654a = o.e(typedArrayObtainStyledAttributes, index, this.f31654a);
                    break;
                case 6:
                    this.f31655b = typedArrayObtainStyledAttributes.getInteger(index, this.f31655b);
                    break;
                case 7:
                    this.f31657d = typedArrayObtainStyledAttributes.getFloat(index, this.f31657d);
                    break;
                case 8:
                    this.f31660g = typedArrayObtainStyledAttributes.getInteger(index, this.f31660g);
                    break;
                case 9:
                    this.f31659f = typedArrayObtainStyledAttributes.getFloat(index, this.f31659f);
                    break;
                case 10:
                    int i9 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    if (i9 == 1) {
                        this.f31662i = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    } else if (i9 == 3) {
                        String string = typedArrayObtainStyledAttributes.getString(index);
                        this.f31661h = string;
                        if (string.indexOf(MqttTopic.TOPIC_LEVEL_SEPARATOR) > 0) {
                            this.f31662i = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        }
                    } else {
                        typedArrayObtainStyledAttributes.getInteger(index, this.f31662i);
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
