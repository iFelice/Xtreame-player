.class public abstract Lcom/google/android/gms/internal/cast/Z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final H:Lcom/google/android/gms/internal/cast/a2;


# instance fields
.field public G:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/a2;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/cast/o2;->b:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/a2;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/Z1;->H:Lcom/google/android/gms/internal/cast/a2;

    .line 9
    .line 10
    sget v0, Lcom/google/android/gms/internal/cast/W1;->a:I

    .line 11
    .line 12
    return-void
.end method

.method public static o(I)V
    .locals 2

    .line 1
    add-int/lit8 v0, p0, -0x2f

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    const-string v1, "End index: 47 >= "

    .line 12
    .line 13
    invoke-static {v1, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method


# virtual methods
.method public final b()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/Z1;->G:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/Z1;->n()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/cast/a2;

    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/cast/o2;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    mul-int/lit8 v3, v3, 0x1f

    .line 19
    .line 20
    iget-object v4, v1, Lcom/google/android/gms/internal/cast/a2;->I:[B

    .line 21
    .line 22
    aget-byte v4, v4, v2

    .line 23
    .line 24
    add-int/2addr v3, v4

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-nez v3, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    :cond_1
    iput v3, p0, Lcom/google/android/gms/internal/cast/Z1;->G:I

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/Z1;->n()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/Z1;->n()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x32

    .line 20
    .line 21
    if-gt v2, v3, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->N(Lcom/google/android/gms/internal/cast/Z1;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, p0

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/cast/a2;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a2;->n()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/Z1;->o(I)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lcom/google/android/gms/internal/cast/Y1;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/google/android/gms/internal/cast/a2;->I:[B

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/cast/Y1;-><init>([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N(Lcom/google/android/gms/internal/cast/Z1;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "..."

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "<ByteString@"

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " size="

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " contents=\""

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, "\">"

    .line 79
    .line 80
    invoke-static {v3, v2, v0}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/Z1;->b()I

    move-result v0

    return v0
.end method

.method public abstract i(I)B
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/X1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/X1;-><init>(Lcom/google/android/gms/internal/cast/Z1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract l(I)B
.end method

.method public abstract n()I
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/Z1;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
