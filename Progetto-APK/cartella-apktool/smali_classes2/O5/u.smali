.class public final LO5/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LP2/b;

.field public final b:I

.field public final c:I

.field public d:Landroid/graphics/Rect;

.field public e:Z


# direct methods
.method public constructor <init>([BIIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LP2/b;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p2, p1, p3, v1}, LP2/b;-><init>(I[BII)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LO5/u;->a:LP2/b;

    .line 11
    .line 12
    iput p5, p0, LO5/u;->c:I

    .line 13
    .line 14
    iput p4, p0, LO5/u;->b:I

    .line 15
    .line 16
    mul-int p4, p2, p3

    .line 17
    .line 18
    array-length p5, p1

    .line 19
    if-gt p4, p5, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p4, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p5, "Image data does not match the resolution. "

    .line 25
    .line 26
    const-string v0, "x"

    .line 27
    .line 28
    const-string v1, " > "

    .line 29
    .line 30
    invoke-static {p5, p2, v0, p3, v1}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    array-length p1, p1

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p4
.end method
