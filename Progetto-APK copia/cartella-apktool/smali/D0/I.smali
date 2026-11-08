.class public final LD0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:LD0/d;

.field public c:Lm2/u;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:LD0/T;

.field public final h:LU4/b;

.field public i:LD0/C;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LD0/I;->a:Landroid/content/Context;

    .line 3
    sget-object v0, LD0/d;->c:LD0/d;

    iput-object v0, p0, LD0/I;->b:LD0/d;

    .line 4
    sget-object v0, LD0/G;->a:LD0/T;

    iput-object v0, p0, LD0/I;->g:LD0/T;

    .line 5
    sget-object v0, LD0/H;->b:LU4/b;

    iput-object v0, p0, LD0/I;->h:LU4/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LD0/I;->a:Landroid/content/Context;

    .line 8
    sget-object p1, LD0/d;->c:LD0/d;

    iput-object p1, p0, LD0/I;->b:LD0/d;

    .line 9
    sget-object p1, LD0/G;->a:LD0/T;

    iput-object p1, p0, LD0/I;->g:LD0/T;

    .line 10
    sget-object p1, LD0/H;->b:LU4/b;

    iput-object p1, p0, LD0/I;->h:LU4/b;

    return-void
.end method


# virtual methods
.method public final a()LD0/S;
    .locals 2

    .line 1
    iget-boolean v0, p0, LD0/I;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, LD0/I;->f:Z

    .line 9
    .line 10
    iget-object v0, p0, LD0/I;->c:Lm2/u;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lm2/u;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ln0/g;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lm2/u;-><init>([Ln0/g;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LD0/I;->c:Lm2/u;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, LD0/I;->i:LD0/C;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v0, LD0/C;

    .line 29
    .line 30
    iget-object v1, p0, LD0/I;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v0, v1}, LD0/C;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, LD0/I;->i:LD0/C;

    .line 36
    .line 37
    :cond_1
    new-instance v0, LD0/S;

    .line 38
    .line 39
    invoke-direct {v0, p0}, LD0/S;-><init>(LD0/I;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
