.class public final LL1/h;
.super Lz6/c;
.source "SourceFile"


# instance fields
.field public J:LL1/i;

.field public synthetic K:Ljava/lang/Object;

.field public final synthetic L:LL1/i;

.field public M:I


# direct methods
.method public constructor <init>(LL1/i;Lx6/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL1/h;->L:LL1/i;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lz6/c;-><init>(Lx6/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, LL1/h;->K:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, LL1/h;->M:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, LL1/h;->M:I

    .line 9
    .line 10
    iget-object p1, p0, LL1/h;->L:LL1/i;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, LL1/i;->b(LL1/i;LL1/b;Lx6/e;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
