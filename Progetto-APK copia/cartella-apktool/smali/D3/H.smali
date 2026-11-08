.class public final LD3/H;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"


# instance fields
.field public final synthetic H:LD3/c;


# direct methods
.method public constructor <init>(LD3/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, LD3/H;->H:LD3/c;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.cast.framework.ICastConnectionController"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, LD3/H;->H:LD3/c;

    .line 4
    .line 5
    if-eq p1, v1, :cond_6

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    if-eq p1, v4, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x5

    .line 17
    if-eq p1, p2, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    .line 24
    .line 25
    const p1, 0xbdfcb8

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p1}, LD3/c;->d(LD3/c;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, v2, LD3/c;->i:LC3/F;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget v2, p2, LC3/F;->v:I

    .line 60
    .line 61
    if-ne v2, v0, :cond_3

    .line 62
    .line 63
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lm2/c;

    .line 68
    .line 69
    const/16 v3, 0x10

    .line 70
    .line 71
    invoke-direct {v2, v3, p2, p1}, Lm2/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, v0, LK3/r;->c:Ljava/lang/Object;

    .line 75
    .line 76
    const/16 p1, 0x20d9

    .line 77
    .line 78
    iput p1, v0, LK3/r;->a:I

    .line 79
    .line 80
    invoke-virtual {v0}, LK3/r;->a()LK3/O;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object v4, LC3/i;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    .line 97
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, LC3/i;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, v2, LD3/c;->i:LC3/F;

    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    iget v2, p2, LC3/F;->v:I

    .line 111
    .line 112
    if-ne v2, v0, :cond_5

    .line 113
    .line 114
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v2, La3/b;

    .line 119
    .line 120
    const/4 v5, 0x6

    .line 121
    invoke-direct {v2, p2, p1, v4, v5}, La3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    iput-object v2, v0, LK3/r;->c:Ljava/lang/Object;

    .line 125
    .line 126
    const/16 p1, 0x20d6

    .line 127
    .line 128
    iput p1, v0, LK3/r;->a:I

    .line 129
    .line 130
    invoke-virtual {v0}, LK3/r;->a()LK3/O;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, LD3/G;

    .line 139
    .line 140
    invoke-direct {p2, p0, v3}, LD3/G;-><init>(LD3/H;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lg4/h;->a(Lg4/d;)Lg4/r;

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 159
    .line 160
    .line 161
    iget-object p2, v2, LD3/c;->i:LC3/F;

    .line 162
    .line 163
    if-eqz p2, :cond_7

    .line 164
    .line 165
    iget v2, p2, LC3/F;->v:I

    .line 166
    .line 167
    if-ne v2, v0, :cond_7

    .line 168
    .line 169
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v2, LC3/B;

    .line 174
    .line 175
    invoke-direct {v2, p2, p1, v3}, LC3/B;-><init>(LC3/F;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iput-object v2, v0, LK3/r;->c:Ljava/lang/Object;

    .line 179
    .line 180
    const/16 p1, 0x20d7

    .line 181
    .line 182
    iput p1, v0, LK3/r;->a:I

    .line 183
    .line 184
    invoke-virtual {v0}, LK3/r;->a()LK3/O;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance p2, LD3/G;

    .line 193
    .line 194
    invoke-direct {p2, p0, v1}, LD3/G;-><init>(LD3/H;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lg4/h;->a(Lg4/d;)Lg4/r;

    .line 198
    .line 199
    .line 200
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    .line 202
    .line 203
    :goto_0
    return v1
.end method
