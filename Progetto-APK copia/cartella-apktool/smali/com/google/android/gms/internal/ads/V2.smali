.class public final Lcom/google/android/gms/internal/ads/V2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/a3;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/U2;

.field public final b:Lcom/google/android/gms/internal/ads/jr;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/U2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/V2;->a:Lcom/google/android/gms/internal/ads/U2;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/V2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Ys;Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V2;->a:Lcom/google/android/gms/internal/ads/U2;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/U2;->a(Lcom/google/android/gms/internal/ads/Ys;Lcom/google/android/gms/internal/ads/N;LA1/I;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/V2;->f:Z

    .line 8
    .line 9
    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/ads/jr;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget v3, p2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 11
    .line 12
    add-int/2addr v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, -0x1

    .line 15
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/V2;->f:Z

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    if-eqz p1, :cond_8

    .line 22
    .line 23
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/V2;->f:Z

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 26
    .line 27
    .line 28
    iput v4, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 29
    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-lez p1, :cond_8

    .line 35
    .line 36
    iget p1, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/V2;->b:Lcom/google/android/gms/internal/ads/jr;

    .line 40
    .line 41
    if-ge p1, v2, :cond_5

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget v5, p2, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 50
    .line 51
    add-int/2addr v5, v1

    .line 52
    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 53
    .line 54
    .line 55
    const/16 v5, 0xff

    .line 56
    .line 57
    if-eq p1, v5, :cond_6

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget v5, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 64
    .line 65
    rsub-int/lit8 v5, v5, 0x3

    .line 66
    .line 67
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 72
    .line 73
    iget v6, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 74
    .line 75
    invoke-virtual {p2, v6, v5, p1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 76
    .line 77
    .line 78
    iget v5, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 79
    .line 80
    add-int/2addr v5, p1

    .line 81
    iput v5, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 82
    .line 83
    if-ne v5, v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    and-int/lit16 v5, p1, 0x80

    .line 99
    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/4 v5, 0x0

    .line 105
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/V2;->e:Z

    .line 110
    .line 111
    and-int/lit8 p1, p1, 0xf

    .line 112
    .line 113
    shl-int/lit8 p1, p1, 0x8

    .line 114
    .line 115
    or-int/2addr p1, v6

    .line 116
    add-int/2addr p1, v2

    .line 117
    iput p1, p0, Lcom/google/android/gms/internal/ads/V2;->c:I

    .line 118
    .line 119
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 120
    .line 121
    array-length v5, v2

    .line 122
    if-ge v5, p1, :cond_2

    .line 123
    .line 124
    array-length v2, v2

    .line 125
    add-int/2addr v2, v2

    .line 126
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    const/16 v2, 0x1002

    .line 131
    .line 132
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/jr;->e(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iget v5, p0, Lcom/google/android/gms/internal/ads/V2;->c:I

    .line 145
    .line 146
    sub-int/2addr v5, p1

    .line 147
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 152
    .line 153
    iget v5, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 154
    .line 155
    invoke-virtual {p2, v5, v2, p1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 156
    .line 157
    .line 158
    iget v2, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 159
    .line 160
    add-int/2addr v2, p1

    .line 161
    iput v2, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 162
    .line 163
    iget p1, p0, Lcom/google/android/gms/internal/ads/V2;->c:I

    .line 164
    .line 165
    if-ne v2, p1, :cond_2

    .line 166
    .line 167
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/V2;->e:Z

    .line 168
    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 172
    .line 173
    invoke-static {v4, v2, p1, v1}, Lcom/google/android/gms/internal/ads/Et;->l(I[BII)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_6

    .line 178
    .line 179
    iget p1, p0, Lcom/google/android/gms/internal/ads/V2;->c:I

    .line 180
    .line 181
    add-int/lit8 p1, p1, -0x4

    .line 182
    .line 183
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/V2;->f:Z

    .line 188
    .line 189
    return-void

    .line 190
    :cond_7
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 191
    .line 192
    .line 193
    :goto_3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/V2;->a:Lcom/google/android/gms/internal/ads/U2;

    .line 197
    .line 198
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/U2;->b(Lcom/google/android/gms/internal/ads/jr;)V

    .line 199
    .line 200
    .line 201
    iput v4, p0, Lcom/google/android/gms/internal/ads/V2;->d:I

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_8
    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/V2;->f:Z

    return-void
.end method
