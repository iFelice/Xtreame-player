.class public final LC3/k;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LC3/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final T:LH3/b;


# instance fields
.field public final G:Lcom/google/android/gms/cast/MediaInfo;

.field public final H:LC3/n;

.field public final I:Ljava/lang/Boolean;

.field public final J:J

.field public final K:D

.field public final L:[J

.field public M:Ljava/lang/String;

.field public final N:Lorg/json/JSONObject;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public final S:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaLoadRequestData"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LC3/k;->T:LH3/b;

    .line 10
    .line 11
    new-instance v0, LC3/H;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, LC3/H;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LC3/k;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;LC3/n;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 5
    .line 6
    iput-object p2, p0, LC3/k;->H:LC3/n;

    .line 7
    .line 8
    iput-object p3, p0, LC3/k;->I:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-wide p4, p0, LC3/k;->J:J

    .line 11
    .line 12
    iput-wide p6, p0, LC3/k;->K:D

    .line 13
    .line 14
    iput-object p8, p0, LC3/k;->L:[J

    .line 15
    .line 16
    iput-object p9, p0, LC3/k;->N:Lorg/json/JSONObject;

    .line 17
    .line 18
    iput-object p10, p0, LC3/k;->O:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p11, p0, LC3/k;->P:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p12, p0, LC3/k;->Q:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p13, p0, LC3/k;->R:Ljava/lang/String;

    .line 25
    .line 26
    iput-wide p14, p0, LC3/k;->S:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LC3/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, LC3/k;

    .line 12
    .line 13
    iget-object v1, p1, LC3/k;->N:Lorg/json/JSONObject;

    .line 14
    .line 15
    iget-object v3, p0, LC3/k;->N:Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-static {v3, v1}, LP3/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 25
    .line 26
    iget-object v3, p1, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 27
    .line 28
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object v1, p0, LC3/k;->H:LC3/n;

    .line 35
    .line 36
    iget-object v3, p1, LC3/k;->H:LC3/n;

    .line 37
    .line 38
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, LC3/k;->I:Ljava/lang/Boolean;

    .line 45
    .line 46
    iget-object v3, p1, LC3/k;->I:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-wide v3, p0, LC3/k;->J:J

    .line 55
    .line 56
    iget-wide v5, p1, LC3/k;->J:J

    .line 57
    .line 58
    cmp-long v1, v3, v5

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    iget-wide v3, p0, LC3/k;->K:D

    .line 63
    .line 64
    iget-wide v5, p1, LC3/k;->K:D

    .line 65
    .line 66
    cmpl-double v1, v3, v5

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, LC3/k;->L:[J

    .line 71
    .line 72
    iget-object v3, p1, LC3/k;->L:[J

    .line 73
    .line 74
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, LC3/k;->O:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p1, LC3/k;->O:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, LC3/k;->P:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, LC3/k;->P:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    iget-object v1, p0, LC3/k;->Q:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, LC3/k;->Q:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    iget-object v1, p0, LC3/k;->R:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v3, p1, LC3/k;->R:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    iget-wide v3, p0, LC3/k;->S:J

    .line 121
    .line 122
    iget-wide v5, p1, LC3/k;->S:J

    .line 123
    .line 124
    cmp-long p1, v3, v5

    .line 125
    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    return v0

    .line 129
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 14

    .line 1
    iget-wide v0, p0, LC3/k;->J:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, LC3/k;->K:D

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, LC3/k;->N:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, LC3/k;->S:J

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 26
    .line 27
    iget-object v5, p0, LC3/k;->H:LC3/n;

    .line 28
    .line 29
    iget-object v6, p0, LC3/k;->I:Ljava/lang/Boolean;

    .line 30
    .line 31
    iget-object v7, p0, LC3/k;->L:[J

    .line 32
    .line 33
    iget-object v8, p0, LC3/k;->O:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v9, p0, LC3/k;->P:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v10, p0, LC3/k;->Q:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v11, p0, LC3/k;->R:Ljava/lang/String;

    .line 40
    .line 41
    const/16 v12, 0xc

    .line 42
    .line 43
    new-array v12, v12, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    aput-object v4, v12, v13

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    aput-object v5, v12, v4

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    aput-object v6, v12, v4

    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    aput-object v0, v12, v4

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    aput-object v1, v12, v0

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    aput-object v7, v12, v0

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    aput-object v2, v12, v0

    .line 65
    .line 66
    const/4 v0, 0x7

    .line 67
    aput-object v8, v12, v0

    .line 68
    .line 69
    const/16 v0, 0x8

    .line 70
    .line 71
    aput-object v9, v12, v0

    .line 72
    .line 73
    const/16 v0, 0x9

    .line 74
    .line 75
    aput-object v10, v12, v0

    .line 76
    .line 77
    const/16 v0, 0xa

    .line 78
    .line 79
    aput-object v11, v12, v0

    .line 80
    .line 81
    const/16 v0, 0xb

    .line 82
    .line 83
    aput-object v3, v12, v0

    .line 84
    .line 85
    invoke-static {v12}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, LC3/k;->N:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iput-object v0, p0, LC3/k;->M:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x4f45

    .line 14
    .line 15
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    iget-object v2, p0, LC3/k;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 21
    .line 22
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    iget-object v2, p0, LC3/k;->H:LC3/n;

    .line 27
    .line 28
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x4

    .line 32
    iget-object v1, p0, LC3/k;->I:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {p1, p2, v1}, Lf/b;->I(Landroid/os/Parcel;ILjava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x5

    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 41
    .line 42
    .line 43
    iget-wide v2, p0, LC3/k;->J:J

    .line 44
    .line 45
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x6

    .line 49
    invoke-static {p1, p2, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 50
    .line 51
    .line 52
    iget-wide v2, p0, LC3/k;->K:D

    .line 53
    .line 54
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x7

    .line 58
    iget-object v2, p0, LC3/k;->L:[J

    .line 59
    .line 60
    invoke-static {p1, p2, v2}, Lf/b;->O(Landroid/os/Parcel;I[J)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, LC3/k;->M:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p1, v1, p2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/16 p2, 0x9

    .line 69
    .line 70
    iget-object v2, p0, LC3/k;->O:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1, p2, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/16 p2, 0xa

    .line 76
    .line 77
    iget-object v2, p0, LC3/k;->P:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1, p2, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/16 p2, 0xb

    .line 83
    .line 84
    iget-object v2, p0, LC3/k;->Q:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p1, p2, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0xc

    .line 90
    .line 91
    iget-object v2, p0, LC3/k;->R:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1, p2, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/16 p2, 0xd

    .line 97
    .line 98
    invoke-static {p1, p2, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, LC3/k;->S:J

    .line 102
    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
