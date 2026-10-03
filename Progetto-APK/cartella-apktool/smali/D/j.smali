.class public final LD/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[LD/y;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:Ljava/lang/CharSequence;

.field public final j:Landroid/app/PendingIntent;

.field public final k:Z


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p6, 0x1

    .line 5
    iput-boolean p6, p0, LD/j;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, LD/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->g()I

    .line 12
    .line 13
    .line 14
    move-result p6

    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p6, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->e()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, LD/j;->h:I

    .line 23
    .line 24
    :cond_0
    invoke-static {p2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, LD/j;->i:Ljava/lang/CharSequence;

    .line 29
    .line 30
    iput-object p3, p0, LD/j;->j:Landroid/app/PendingIntent;

    .line 31
    .line 32
    if-eqz p4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object p4, p0, LD/j;->a:Landroid/os/Bundle;

    .line 41
    .line 42
    iput-object p5, p0, LD/j;->c:[LD/y;

    .line 43
    .line 44
    iput-boolean p7, p0, LD/j;->d:Z

    .line 45
    .line 46
    iput p8, p0, LD/j;->f:I

    .line 47
    .line 48
    iput-boolean p9, p0, LD/j;->e:Z

    .line 49
    .line 50
    iput-boolean p10, p0, LD/j;->g:Z

    .line 51
    .line 52
    iput-boolean p11, p0, LD/j;->k:Z

    .line 53
    .line 54
    return-void
.end method
