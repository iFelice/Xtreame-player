.class public final LD0/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm0/t;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ln0/d;

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Lm0/t;IIIIIIILn0/d;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD0/J;->a:Lm0/t;

    .line 5
    .line 6
    iput p2, p0, LD0/J;->b:I

    .line 7
    .line 8
    iput p3, p0, LD0/J;->c:I

    .line 9
    .line 10
    iput p4, p0, LD0/J;->d:I

    .line 11
    .line 12
    iput p5, p0, LD0/J;->e:I

    .line 13
    .line 14
    iput p6, p0, LD0/J;->f:I

    .line 15
    .line 16
    iput p7, p0, LD0/J;->g:I

    .line 17
    .line 18
    iput p8, p0, LD0/J;->h:I

    .line 19
    .line 20
    iput-object p9, p0, LD0/J;->i:Ln0/d;

    .line 21
    .line 22
    iput-boolean p10, p0, LD0/J;->j:Z

    .line 23
    .line 24
    iput-boolean p11, p0, LD0/J;->k:Z

    .line 25
    .line 26
    iput-boolean p12, p0, LD0/J;->l:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()LD0/p;
    .locals 8

    .line 1
    new-instance v7, LD0/p;

    .line 2
    .line 3
    iget v0, p0, LD0/J;->c:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v6, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    iget v4, p0, LD0/J;->h:I

    .line 13
    .line 14
    iget v1, p0, LD0/J;->g:I

    .line 15
    .line 16
    iget v2, p0, LD0/J;->e:I

    .line 17
    .line 18
    iget v3, p0, LD0/J;->f:I

    .line 19
    .line 20
    iget-boolean v5, p0, LD0/J;->l:Z

    .line 21
    .line 22
    move-object v0, v7

    .line 23
    invoke-direct/range {v0 .. v6}, LD0/p;-><init>(IIIIZZ)V

    .line 24
    .line 25
    .line 26
    return-object v7
.end method
