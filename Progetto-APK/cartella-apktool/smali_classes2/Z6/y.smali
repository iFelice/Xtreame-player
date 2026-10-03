.class public final LZ6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/q;


# static fields
.field public static final a:LZ6/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LZ6/y;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LZ6/y;->a:LZ6/y;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    invoke-static {p1, p2}, LZ6/C;->a(Ljava/lang/Appendable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final c(Ljava/lang/Appendable;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, LZ6/C;->a(Ljava/lang/Appendable;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
