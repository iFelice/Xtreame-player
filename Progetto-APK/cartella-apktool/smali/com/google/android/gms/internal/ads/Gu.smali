.class public final Lcom/google/android/gms/internal/ads/Gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/K9;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/Gu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:[B

.field public final I:I

.field public final J:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zc;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zc;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Gu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/Gu;->I:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Gu;->J:I

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Gu;->a(ILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/Gu;->a(ILjava/lang/String;[B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/Gu;->I:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/Gu;->J:I

    return-void
.end method

.method public static a(ILjava/lang/String;[B)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "editable.tracks.map"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    goto :goto_1

    .line 24
    :sswitch_1
    const-string v0, "editable.tracks.offset"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :sswitch_2
    const-string v0, "editable.tracks.length"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    goto :goto_1

    .line 44
    :sswitch_3
    const-string v0, "editable.tracks.samples.location"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    const/4 p1, 0x4

    .line 53
    goto :goto_1

    .line 54
    :sswitch_4
    const-string v0, "com.android.capture.fps"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 65
    :goto_1
    if-eqz p1, :cond_8

    .line 66
    .line 67
    if-eq p1, v4, :cond_6

    .line 68
    .line 69
    if-eq p1, v1, :cond_6

    .line 70
    .line 71
    if-eq p1, v2, :cond_4

    .line 72
    .line 73
    if-eq p1, v3, :cond_1

    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    const/16 p1, 0x4b

    .line 77
    .line 78
    if-ne p0, p1, :cond_2

    .line 79
    .line 80
    array-length p0, p2

    .line 81
    if-ne p0, v4, :cond_2

    .line 82
    .line 83
    aget-byte p0, p2, v5

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    if-ne p0, v4, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const/4 v4, 0x0

    .line 91
    :cond_3
    :goto_2
    invoke-static {v4}, Lo3/r;->J(Z)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    if-nez p0, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/4 v4, 0x0

    .line 99
    :goto_3
    invoke-static {v4}, Lo3/r;->J(Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    const/16 p1, 0x4e

    .line 104
    .line 105
    if-ne p0, p1, :cond_7

    .line 106
    .line 107
    array-length p0, p2

    .line 108
    const/16 p1, 0x8

    .line 109
    .line 110
    if-ne p0, p1, :cond_7

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    const/4 v4, 0x0

    .line 114
    :goto_4
    invoke-static {v4}, Lo3/r;->J(Z)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_8
    const/16 p1, 0x17

    .line 119
    .line 120
    if-ne p0, p1, :cond_9

    .line 121
    .line 122
    array-length p0, p2

    .line 123
    if-ne p0, v3, :cond_9

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    const/4 v4, 0x0

    .line 127
    :goto_5
    invoke-static {v4}, Lo3/r;->J(Z)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x7438daab -> :sswitch_4
        -0x5cb938ea -> :sswitch_3
        0x611a902 -> :sswitch_2
        0xb3ad2af -> :sswitch_1
        0x6b964cc0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic b(Lcom/google/android/gms/internal/ads/A8;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/Gu;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Gu;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    .line 30
    .line 31
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/google/android/gms/internal/ads/Gu;->I:I

    .line 40
    .line 41
    iget v3, p1, Lcom/google/android/gms/internal/ads/Gu;->I:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget v2, p0, Lcom/google/android/gms/internal/ads/Gu;->J:I

    .line 46
    .line 47
    iget p1, p1, Lcom/google/android/gms/internal/ads/Gu;->J:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_2

    .line 50
    .line 51
    return v0

    .line 52
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/Gu;->I:I

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/Gu;->J:I

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    .line 6
    .line 7
    iget v4, p0, Lcom/google/android/gms/internal/ads/Gu;->J:I

    .line 8
    .line 9
    if-eqz v4, :cond_5

    .line 10
    .line 11
    if-eq v4, v0, :cond_4

    .line 12
    .line 13
    const/16 v0, 0x17

    .line 14
    .line 15
    if-eq v4, v0, :cond_3

    .line 16
    .line 17
    const/16 v0, 0x43

    .line 18
    .line 19
    if-eq v4, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0x4b

    .line 22
    .line 23
    if-eq v4, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x4e

    .line 26
    .line 27
    if-eq v4, v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 31
    .line 32
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    aget-byte v0, v3, v2

    .line 46
    .line 47
    and-int/lit16 v0, v0, 0xff

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->l1([B)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->l1([B)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 79
    .line 80
    new-instance v0, Ljava/lang/String;

    .line 81
    .line 82
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    .line 84
    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    const-string v4, "editable.tracks.map"

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    const-string v4, "track types = "

    .line 97
    .line 98
    invoke-static {v4}, Lcom/google/protobuf/U2;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    aget-byte v0, v3, v0

    .line 103
    .line 104
    new-instance v5, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :goto_0
    if-ge v2, v0, :cond_6

    .line 110
    .line 111
    add-int/lit8 v6, v2, 0x2

    .line 112
    .line 113
    aget-byte v6, v3, v6

    .line 114
    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v2, ","

    .line 130
    .line 131
    invoke-static {v4, v0, v2}, La7/b;->t(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    array-length v4, v3

    .line 142
    add-int/2addr v4, v4

    .line 143
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .line 145
    .line 146
    :goto_2
    array-length v4, v3

    .line 147
    if-ge v2, v4, :cond_8

    .line 148
    .line 149
    aget-byte v4, v3, v2

    .line 150
    .line 151
    shr-int/lit8 v4, v4, 0x4

    .line 152
    .line 153
    and-int/lit8 v4, v4, 0xf

    .line 154
    .line 155
    const/16 v5, 0x10

    .line 156
    .line 157
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    aget-byte v4, v3, v2

    .line 165
    .line 166
    and-int/lit8 v4, v4, 0xf

    .line 167
    .line 168
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_3
    const-string v2, "mdta: key="

    .line 183
    .line 184
    const-string v3, ", value="

    .line 185
    .line 186
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Gu;->H:[B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/google/android/gms/internal/ads/Gu;->I:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/google/android/gms/internal/ads/Gu;->J:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
