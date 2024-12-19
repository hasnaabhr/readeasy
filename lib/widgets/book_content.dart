import 'package:flutter/material.dart';


class BookContent extends StatelessWidget {
  const BookContent({
    super.key,
    required TextStyle storyTextStyle,
  }) : _storyTextStyle = storyTextStyle;

  final TextStyle _storyTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Elspeth Spindle has always felt different. Haunted by shadows and a chilling silence that fills the mist-locked kingdom of Blunder, her life has been anything but ordinary. In a land where secrets are woven into the fabric of reality, Elspeth's secret is perhaps the darkest of all—she's bound to an ancient spirit she calls the Nightmare. This spirit, once a creature of legend, now exists only in her mind, a shadowed guardian who both protects and controls her.\n",
            style: _storyTextStyle,
          ),
          Text(
            "The Nightmare is not simply a voice in her head; he is a force of nature, a presence that craves darkness and power, yet maintains a begrudging loyalty to Elspeth. Together, they navigate a kingdom ruled by suspicion and fear, where magic is rare and costly, and trust even rarer. The price of her protection? Slowly, insidiously, the Nightmare is taking over her thoughts, her actions—even her very soul.\n",
            style: _storyTextStyle,
          ),
          Text(
            "One fateful evening, while traveling a lonely forest road, Elspeth encounters a mysterious highwayman with piercing eyes and a daring smile. This stranger is more than he seems; a rogue in appearance, yet every move, every word, holds the precision of someone trained in nobility. Soon, Elspeth learns his secret—he is the King's nephew, a man hunted by his own family for committing an act of high treason. Together, they find themselves entwined in a treacherous dance of deception and fate.\n",
            style: _storyTextStyle,
          ),
          Text(
            "The kingdom of Blunder is dying, slowly succumbing to a curse that poisons its lands and people. Dark magic festers in every shadow, seeping into the hearts of its citizens. Elspeth and the highwayman, now reluctant allies, embark on a desperate mission to find twelve Providence Cards, ancient relics that hold the power to lift the curse and restore the kingdom. Each card is said to hold a piece of the ancient magic, yet finding them is only half the battle—unlocking their power requires a sacrifice that could consume them both.\n",
            style: _storyTextStyle,
          ),
          Text(
            "As they journey through forgotten ruins, hidden forests, and perilous mountains, Elspeth grapples with her deepening connection to the Nightmare. He is becoming more than a voice, more than a whisper in the dark; he is her shadow, her strength, and, increasingly, her weakness. Every time she uses his power, she risks losing another piece of herself. Yet, the Nightmare may be her only chance to survive the dangers ahead.\n",
            style: _storyTextStyle,
          ),
          Text(
            "With the kingdom’s fate in their hands, Elspeth and the highwayman must not only face the darkness surrounding them but also confront the shadows within. The journey forces them to trust each other, a fragile bond that grows stronger—and more dangerous—with every encounter. Their attraction is undeniable, but with betrayal lurking at every turn, love might just be the deadliest trap of all.\n",
            style: _storyTextStyle,
          ),
          Text(
            "As the stakes rise and the Nightmare's influence grows, Elspeth is left with an agonizing choice: embrace the darkness within her, risking everything she once stood for, or sacrifice her own heart for the sake of a kingdom that may never forgive her.\n",
            style: _storyTextStyle,
          ),
        ],
      ),
    );
  }
}
