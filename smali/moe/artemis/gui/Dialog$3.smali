.class Lmoe/artemis/gui/Dialog$3;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/artemis/gui/Dialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/artemis/gui/Dialog;


# direct methods
.method constructor <init>(Lmoe/artemis/gui/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lmoe/artemis/gui/Dialog$3;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 55
    iget-object p1, p0, Lmoe/artemis/gui/Dialog$3;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {p1}, Lmoe/artemis/gui/Dialog;->access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmoe/artemis/gui/Dialog$3;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {p2}, Lmoe/artemis/gui/Dialog;->access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lmoe/artemis/gui/Dialog$3;->this$0:Lmoe/artemis/gui/Dialog;

    invoke-static {v0}, Lmoe/artemis/gui/Dialog;->access$000(Lmoe/artemis/gui/Dialog;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, v1}, Lmoe/artemis/gui/Dialog;->access$100(Lmoe/artemis/gui/Dialog;ILjava/lang/String;J)V

    return-void
.end method
