.class public final LH0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/k;


# static fields
.field public static final f:[I


# instance fields
.field public final a:I

.field public final b:Lq1/k;

.field public c:Z

.field public d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, LH0/d;->f:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, LH0/d;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, LH0/d;->a:I

    .line 5
    iput-boolean p2, p0, LH0/d;->e:Z

    .line 6
    new-instance p1, LF2/G;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, LF2/G;-><init>(I)V

    iput-object p1, p0, LH0/d;->b:Lq1/k;

    return-void
.end method

.method public static a(ILjava/util/ArrayList;)V
    .locals 3

    .line 1
    sget-object v0, LH0/d;->f:[I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v2, v1, v0}, Ly4/k;->N(III[I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lm0/t;)Lm0/t;
    .locals 4

    .line 1
    iget-boolean v0, p0, LH0/d;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LH0/d;->b:Lq1/k;

    .line 6
    .line 7
    check-cast v0, LF2/G;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LF2/G;->K(Lm0/t;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "application/x-media3-cues"

    .line 20
    .line 21
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, LH0/d;->b:Lq1/k;

    .line 28
    .line 29
    check-cast v1, LF2/G;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, LF2/G;->D(Lm0/t;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, v0, Lm0/s;->L:I

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p1, Lm0/t;->o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lm0/t;->k:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, " "

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string p1, ""

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, v0, Lm0/s;->j:Ljava/lang/String;

    .line 76
    .line 77
    const-wide v1, 0x7fffffffffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    iput-wide v1, v0, Lm0/s;->s:J

    .line 83
    .line 84
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_1
    return-object p1
.end method
